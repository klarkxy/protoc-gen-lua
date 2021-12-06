
from io import StringIO

# 默认4字符缩进
INDENT = "    "
# lua的保留字
LUA_KEYWORDS = ["and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","goto"]

class writer:
    def __init__(self) -> None:
        self.content = StringIO()

    def p(self, *str: str) -> None:
        """打印一行内容"""
        for s in str:
            self.content.write(f"{s}")
        self.content.write("\n")

    def done(self) -> str:
        return self.content.getvalue()


class statement:
    """statement代表一个单纯的语句"""

    def __init__(self, str: str) -> None:
        self.str = str

    def gen(self, indent: int = 0, end: str = "") -> str:
        return f"{INDENT * indent}{self.str}{end}"

class rvalue:
    """rvalue代表右值，一个常量，或者一个表达式"""

    def __init__(self, value: int | float | str | bool | list | dict | None) -> None:
        self.rvalue = value

    def gen(self, indent: int = 0, end: str = "") -> str:
        if self.rvalue is None:
            return f"nil{end}"
        elif isinstance(self.rvalue, bool):
            if self.rvalue:
                return f'true{end}'
            else:
                return f'false{end}'
        elif isinstance(self.rvalue, str):
            return f'"{self.rvalue}"{end}'
        elif isinstance(self.rvalue, int):
            return f'{self.rvalue}{end}'
        elif isinstance(self.rvalue, float):
            return f'{self.rvalue}{end}'
        elif isinstance(self.rvalue, list) or isinstance(self.rvalue, dict):
            if len(self.rvalue) <= 0:
                return f"{{}}{end}"
            else:
                w = writer()
                w.p("{")
                if isinstance(self.rvalue, list):
                    for value in self.rvalue:
                        w.p(INDENT * (indent + 1), value.gen(indent + 1, ","))
                elif isinstance(self.rvalue, dict):
                    for key, value in self.rvalue.items():
                        if key in LUA_KEYWORDS:
                            key += "_"
                        if isinstance(value, rvalue):
                            w.p(INDENT * (indent + 1), key, " = ", value.gen(indent + 1, ","))
                        else:
                            w.p(INDENT * (indent + 1), key, " = ", rvalue(value).gen(indent + 1, ","))
                w.p(INDENT * indent, "}" + end)
                return w.done()
        else:
            raise f"Error RValue '{type(self.rvalue)}'."
                
class assignment(statement):
    """assignment表示一句赋值语句"""

    def __init__(
        self,
        variable: str,
        value: rvalue | list[rvalue] | dict[str, rvalue] | int | float | bool | str | None,
    ) -> None:
        self.variable = variable
        if isinstance(value, rvalue):
            self.value = value
        else:
            self.value = rvalue(value)

    def gen(self, indent: int = 0, end: str = "") -> str:
        if self.variable in LUA_KEYWORDS:
            self.variable += "_"
        return f"{INDENT * indent}{self.variable} = {self.value.gen(indent)}{end}"

class functional(rvalue):
    """functional代表一个匿名函数"""

    def __init__(self, args: list[str], *body: statement | str) -> None:
        self.args = args
        self.body = []
        for line in body:
            self.p(line)
        
    def p(self, line: statement | str) -> None:
        if isinstance(line, statement):
            self.body.append(line)
        else:
            self.body.append(statement(line))

    def gen(self, indent: int = 0, end: str = "") -> str:
        w = writer()
        w.p(f"function ({', '.join(self.args)})")
        for line in self.body:
            w.p(line.gen(indent + 1))
        w.p(f"{INDENT * indent}end{end}")
        return w.done()

class caller(rvalue):
    """caller代表调用一个函数"""

    def __init__(self, func : str, *args: str) -> None:
        self.func = func
        self.args = args
        
    def gen(self, indent: int = 0, end: str = "") -> str:
        return f"{self.func}({', '.join(self.args)}){end}"

class expression(rvalue):
    """expression代表一个表达式"""

    def __init__(self, exp:str) -> None:
        self.exp = exp
        
    def gen(self, indent: int = 0, end: str = "") -> str:
        return f"{self.exp}){end}"

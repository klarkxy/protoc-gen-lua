import sys
from io import StringIO

# 默认4字符缩进
INDENT = "    "
# lua的保留字
LUA_KEYWORDS = ["and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","goto"]

DEBUG = True

def log(str: str) -> None:
    if DEBUG:
        print(str, file=sys.stderr)
        
class Writer:
    def __init__(self, indent : int = 0, end : str = "\n") -> None:
        self.content = StringIO()
        self.indent = indent
        self.end = end
        self.parent = None

    def p(self, *str: str, indent : int = None, end : str = None) -> None:
        """打印一整行""" 
        self.pi(indent)
        self.pc(*str)
        self.pe(end)
            
    
    def pi(self, indent : int = None):
        """只打印前面的缩进"""
        if indent is None:
            self.content.write(INDENT * self.indent)
        else:
            self.content.write(INDENT * indent)
            
    def pc(self, *str: str):
        """只打印中间的内容"""
        for s in str:
            self.content.write(f"{s}")
            
    def pe(self, end : str = None):
        """只打印结束符"""
        if end is None:
            self.content.write(self.end)
        else:
            self.content.write(end)

    def __repr__(self) -> str:
        return self.content.getvalue()
    
    def __str__(self) -> str:
        return self.content.getvalue()
    
    def __enter__(self):
        self.indent += 1
        return self
    
    def __exit__(self, exc_type, exc_val, exc_tb):
        self.indent -= 1
        if self.parent is not None:
            self.parent.pc(self)
    
    def sub(self, indent : int = 0, end : str = "\n"):
        s = Writer(self.indent + indent, end)
        s.parent = self
        return s
        
if __name__ == "__main__":
    s = Writer()
    s.p("{")
    with s:
        s.p("aaa: 123,")
        s.p("bbb: {")
        with s.sub(end=",\n") as sp:
            sp.p("ccc: \"hahaha\"", end=", ")
            sp.p("ddd: 56789")
        s.p("}")
    s.p("}")
    print(s)
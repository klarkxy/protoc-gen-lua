#  FILE:  plugin/core/writer.py
#  DESCRIPTION:  protoc-gen-lua
#      Google's Protocol Buffers project, ported to lua.
#      https://github.com/klarkxy/protoc-gen-lua/
#
#      Copyright (c) 2021 , Klarkxy 278370456@qq.com
#      All rights reserved.
#
#      Use, modification and distribution are subject to the "New BSD License"
#      as listed at <url: http://www.opensource.org/licenses/bsd-license.php >.
#
#  COMPANY:  BlackFox
#  CREATED:  2021-12-07 11:23:17 CST

import sys
from io import StringIO

# 默认4字符缩进
INDENT = "    "
# lua的保留字
LUA_KEYWORDS = ["and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","goto"]

DEBUG = False

def log(str: str) -> None:
    if DEBUG:
        print(str, file=sys.stderr)
        
def set_debug(debug : bool):
    global DEBUG 
    DEBUG = debug

def lua_variable(s : str) -> str:
    if s in LUA_KEYWORDS:
        return s + "_"
    return s
        
class Writer:
    def __init__(self, indent : int = 0, end : str = "\n", prefix : str = "") -> None:
        self.content = StringIO()
        self.indent = indent
        self.end = end
        self.prefix = prefix
        self.parent = None

    def p(self, *str: str, indent : int = None, end : str = None):
        """打印一整行""" 
        return self.pp().pi(indent).pc(*str).pe(end)
            
    
    def pi(self, indent : int = None):
        """只打印前面的缩进"""
        if indent is None:
            self.content.write(INDENT * self.indent)
        else:
            self.content.write(INDENT * indent)
        return self
            
    def pc(self, *str: str):
        """只打印中间的内容"""
        for s in str:
            self.content.write(f"{s}")
        return self
            
    def pp(self):
        """只打印前缀"""
        self.content.write(f"{self.prefix}")
        return self
    
    def pe(self, end : str = None):
        """只打印结束符"""
        if end is None:
            self.content.write(self.end)
        else:
            self.content.write(end)
        return self

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
    
    def sub(self, indent : int = -1, end : str = "\n", prefix : str = ""):
        s = Writer(self.indent + indent, end, self.prefix + prefix)
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
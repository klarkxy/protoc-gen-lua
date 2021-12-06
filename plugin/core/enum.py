import google.protobuf.descriptor_pb2 as descriptor_pb2
from .base import *
from .util import *

enum_value_map = {}
enum_map = {}

class enum_value(base):
    def __init__(self, file : descriptor_pb2.FileDescriptorProto, proto : descriptor_pb2.EnumValueDescriptorProto, proto_prefix : str, lua_prefix : str) -> None:
        assert isinstance(proto, descriptor_pb2.EnumValueDescriptorProto)
        super().__init__(file, proto, proto_prefix, lua_prefix)
        enum_value_map[self.proto_name] = self
        
        self.lua_name = get_module_name(self.file.name) + self.lua_name.split(".")[-1]   # 枚举直接取最后的值作为变量使用
        
    def generate(self) -> str:
        return f"{self.lua_name} = {self.proto.number}\n"
    
    def descripte(self) -> str:
        return f"""{self.lua_name}.Descriptor = {{    
    name = {self.proto.name},
    number = {self.proto.number},
}}\n"""
    
class enum:
    def __init__(self, file : descriptor_pb2.FileDescriptorProto, proto : descriptor_pb2.EnumDescriptorProto, proto_prefix : str, lua_prefix : str) -> None:
        assert isinstance(proto, descriptor_pb2.EnumDescriptorProto)
        super().__init__(file, proto, proto_prefix, lua_prefix)
        self.value : list[enum_value] = []
        self.default = None
        for value in proto.value:
            sub = enum_value(value, f"{proto_prefix}.{proto.name}", f"{lua_prefix}.{proto.name}")
            self.value.append(sub)
            if self.default is None or value.number == 0:
                self.default = sub
        enum_map[self.proto_name] = self
        
    def generate(self) -> str:
        s = f"{self.lua_name} = {{}}\n"
        for value in self.value:
            s += value.generate()
        return s
    
    def descripte(self) -> str:
        s  = f"{self.lua_name}.Descriptor = {{"
        s += f"    name = {self.proto.name},"
        s += f"    value = {{"
        for value in self.value:
            s += f"        {value.lua_name}.Descriptor,"
        s += f"    }}"
        s += f"}}"
        return s
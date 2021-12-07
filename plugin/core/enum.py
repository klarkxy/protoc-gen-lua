import google.protobuf.descriptor_pb2 as descriptor_pb2
from .base import *
from .writer import *

enum_value_map = {}
enum_map = {}

class EnumValue(Base):
    def __init__(self, file : descriptor_pb2.FileDescriptorProto, proto : descriptor_pb2.EnumValueDescriptorProto, proto_prefix : str, lua_prefix : str) -> None:
        assert isinstance(proto, descriptor_pb2.EnumValueDescriptorProto)
        super().__init__(file, proto, proto_prefix, lua_prefix)
        log(f"Declare EnumValue '{self.proto_name}'")
        enum_value_map[self.proto_name] = self
        
        # self.lua_name = self.lua_name.split(".")[-1]   # 枚举直接取最后的值作为变量使用
        
    def generate(self, s : Writer):
        log(f"Generate EnumValue '{self.proto_name}'")
        s.p(f"{self.lua_name.split('.')[-1]} = {self.proto.number}")
    
    def descripte(self, s : Writer):
        pass
    
class Enum(Base):
    def __init__(self, file : descriptor_pb2.FileDescriptorProto, proto : descriptor_pb2.EnumDescriptorProto, proto_prefix : str, lua_prefix : str) -> None:
        assert isinstance(proto, descriptor_pb2.EnumDescriptorProto)
        super().__init__(file, proto, proto_prefix, lua_prefix)
        log(f"Declare Enum '{self.proto_name}'")
        self.value : list[EnumValue] = []
        self.default = None
        for value in proto.value:
            sub = EnumValue(file, value, self.proto_name, self.lua_name)
            self.value.append(sub)
            if self.default is None or value.number == 0:
                self.default = sub
        enum_map[self.proto_name] = self
        
    def generate(self, s : Writer):
        log(f"Generate Enum '{self.proto_name}'")
        s.p("")
        s.p(f"{self.lua_name} = {{")
        with s.sub(end=",\n") as sub:
            for value in self.value:
                value.generate(sub)
        s.p("}")
    
    def descripte(self, s : Writer):
        log(f"Descripte Enum '{self.proto_name}'")
        s.p(f"{self.lua_name}.Descriptor = {{")
        with s:
            s.p(f"name = \"{self.proto_name}\",")
        s.p("}")
        return s
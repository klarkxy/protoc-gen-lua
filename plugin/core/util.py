import os 

def get_module_name(proto_path : str) -> str:
    """将xxx/yyy/zzz.proto转成 xxx_yyy_zzz_pb"""
    local = os.path.splitext(proto_path)[0] + "_pb"
    return "_".join(local.split("/"))
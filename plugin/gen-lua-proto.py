import os
import sys

PWD = os.path.abspath(os.path.split(__file__)[0])
PROTOC_DIR_PATH = os.path.join(PWD, "protoc")
INCLUDE_PATH = os.path.join(PROTOC_DIR_PATH, "include")
PROTOC = os.path.join(PROTOC_DIR_PATH, "bin", "protoc")
if sys.platform == "win32":
    PROTOC_GEN_LUA = os.path.join(PWD, "protoc-gen-lua.bat")
else:
    PROTOC_GEN_LUA = os.path.join(PWD, "protoc-gen-lua.py")

real_files = []
for root, dirs, files in os.walk(INCLUDE_PATH):
    for file in files:
        if file.endswith(".proto"):
            realfile = os.path.join(root, file)
            real_files.append(realfile)

cmd = f"{PROTOC} --plugin=protoc-gen-lua={PROTOC_GEN_LUA} --lua_out={INCLUDE_PATH} --proto_path={INCLUDE_PATH} " + " ".join(real_files)
print(cmd)
os.system(cmd)

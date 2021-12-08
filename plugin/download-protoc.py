#  FILE:  download-protoc.py
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
#  CREATED:  2021-12-01 10:58:29 CST


import os
import sys
import json
import zipfile
import requests
from clint.textui import progress

PWD = os.path.abspath(os.path.split(__file__)[0])
PROTOC_DIR_PATH = os.path.join(PWD, "protoc")
DOWNLOAD_PATH = os.path.join(PROTOC_DIR_PATH, "downloads")

os.makedirs(DOWNLOAD_PATH, exist_ok=True)

print(f"正在获取protoc的最新Release.")

def query_download_url():
    r = requests.get("https://api.github.com/repos/protocolbuffers/protobuf/releases/latest")
    res = json.loads(r.text)

    tag = res["tag_name"]
    version = tag[1:]
    name = ""
    if sys.platform == "win32":
        name = f"protoc-{version}-win64.zip"
    elif sys.platform == "darwin":
        name = f"protoc-{version}-osx-x86_64.zip"
    elif sys.platform == "linux" or sys.platform == "cygwin":
        name = f"protoc-{version}-linux-x86_64.zip"
    for asset in res["assets"]:
        if asset["name"] == name:
            return asset["browser_download_url"], name
    raise("下载地址未找到.")

download_url, file = query_download_url()
real_file = os.path.join(DOWNLOAD_PATH, file)

if os.path.exists(real_file):
    print(f"\"{real_file}\"已存在。")
else:
    print(f"开始下载\"{download_url}\".")

    r = requests.get(download_url, stream=True)
    total_length = int(r.headers.get('content-length'))

    with open(real_file, "wb") as f:
        for chunk in progress.bar(r.iter_content(chunk_size=1024), expected_size=(total_length/1024) + 1, width=100):
            if chunk:
                f.write(chunk)
    
print(f"正在解压\"{real_file}\"到\"{PROTOC_DIR_PATH}\"")
with zipfile.ZipFile(real_file) as zf:
    zf.extractall(PROTOC_DIR_PATH)
    
print("Protoc更新完毕。")
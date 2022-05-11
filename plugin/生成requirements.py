import os
import sys

PWD = os.path.split(os.path.abspath(__file__))[0]

os.system(f"pipreqs {PWD} --force --encoding utf-8 --pypi-server https://pypi.tuna.tsinghua.edu.cn/")

#!/bin/bash

# 判断本机是否已安装Python
if command -v python3 &>/dev/null; then
    echo "Python is already installed."
else
    echo "installing Python3 ......"
    # 获取当前操作系统类型
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        OS=$NAME
    else
        echo "Error: Unsupported OS"
        exit 1
    fi

    # 根据操作系统类型安装Python
    case $OS in
        "Ubuntu" | "Debian GNU/Linux")
            sudo apt update
            sudo apt install python3 -y
            ;;
        "CentOS Linux" | "Red Hat Enterprise Linux")
            sudo yum update
            sudo yum install python3 -y
            ;;
        *)
            echo "Error: Unsupported OS"
            exit 1
            ;;
    esac
fi

# 执行python脚本安装warp并修改xray配置
curl -sSL https://raw.githubusercontent.com/xianlinyi/warp2chatgpt/master/warp.py | python3

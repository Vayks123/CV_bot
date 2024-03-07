#!/bin/env bash
set -x
set -e

python3 --version

if pip3 --version ; then
    echo "pip is installed"
else
    echo "pip is uninstalled"
    sudo apt update -y && sudo apt install python3-pip
fi

python3 -m pip install -r requirements.txt
killall python3
python main.py

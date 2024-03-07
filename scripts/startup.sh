#!/bin/env bash
set -x
set -e

python3 --version

if pip --version ; then
    echo "pip is installed"
else
    sudo apt update -y && sudo apt install python3-pip
fi

pip install -r requirment.txt
killall python3
python main.py

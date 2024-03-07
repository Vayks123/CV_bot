#!/bin/env bash
set -x
# set -e

python3 --version
pip3.10 install -r requirements.txt
killall python3
ls -lA
python3 main.py

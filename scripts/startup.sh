#!/bin/env bash
set -x
# set -e

python3 --version
/bin/pip3 install -r requirements.txt
killall python3
python3 main.py

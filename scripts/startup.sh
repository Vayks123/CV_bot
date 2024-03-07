#!/bin/env bash
set -x
# set -e

python3 --version
pip3
sudo pip3 install -r requirements.txt
killall python3
ls -lA
python3 main.py

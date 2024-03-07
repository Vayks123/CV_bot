#!/bin/env bash
set -x
# set -e

python3 --version
pip 
sudo pip install -r requirements.txt
killall python3
ls -lA
python3 main.py

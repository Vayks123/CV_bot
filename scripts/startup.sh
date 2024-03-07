#!/bin/env bash

sudo apt install -y python3-venv

python3 --version

python3 -m venv venv
source venv/bin/activate 
pip3 install -r requirements.txt
# killall python3 
python3 main.py

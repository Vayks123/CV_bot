#!/bin/env bash
set -x
set -e

python3 --version
python3 -m pip install -r requirements.txt
killall python3
ls -lA
python main.py

#!/bin/env bash
set -x
set -e

python3 --version
pip --version
pip install -r requirements.txt
killall python3
ls -lA
python main.py

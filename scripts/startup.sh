#!/bin/env bash
set -x
set -e

python3 --version
pip --version
killall python3
python main.py

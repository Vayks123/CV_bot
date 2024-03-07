#!/bin/env bash

sudo apt install -y python3-venv
sudo cp /tmp/telegrambot.service /etc/systemd/system/

python3 --version

python3 -m venv venv
source venv/bin/activate 
pip3 install -r requirements.txt

sudo sudo systemctl daemon-reload
sudo systemctl start your_unit
sudo systemctl enable your_unit
sudo systemctl status your_unit


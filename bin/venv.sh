#!/bin/bash -e
python3 -m venv venv
./venv/bin/activate
python3 -m pip install --upgrade pip
python3 -m pip install --user -r requirements.txt

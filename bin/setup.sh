#!/bin/bash -e
sudo git config --global --add safe.directory ${pwd}
sudo apt install -y build-essential curl git ca-certificates python3 python3-dev python3-pip python3-venv python3-behave

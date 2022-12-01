#!/bin/bash -e
pwd=$(pwd)

cd "${0%/*}"
${pwd}/bin/clean.sh
cd ${pwd}

rm -rf ${pwd}/venv

python3 -m venv ${pwd}/venv
chmod +x ${pwd}/venv/bin/activate && ${pwd}/venv/bin/activate
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

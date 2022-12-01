#!/bin/bash -e
if [ "$EUID" -e 0 ]
  then echo "Please run as user"
  exit
fi

pwd=$(pwd)

cd "${0%/*}"
${pwd}/bin/clean.sh
cd ${pwd}

rm -rf ${pwd}/venv

python3 -m venv ${pwd}/venv
chmod +x ${pwd}/venv/bin/activate && ${pwd}/venv/bin/activate
python3 -m pip install --require-virtualenv --upgrade pip
python3 -m pip install --require-virtualenv -r requirements.txt

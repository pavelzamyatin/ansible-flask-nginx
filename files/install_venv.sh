#!/bin/bash

# ----- IMPORTANT! ----- # 
# you MUST change this path to your specific directory
cd /app/fletter

# python version depends on your setup.yml
python3.5 -m venv venv
source venv/bin/activate

# pip update to latest version
pip install --upgrade pip

# install all dependencies
pip install -r requirements.txt

# install wsgi server
pip install gunicorn

# create db for application
python create_db.py
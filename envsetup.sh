#!/bin/bash

if [ -d "env" ] 
then
    echo "Python virtual environment exists." 
else
    python -m venv env
fi

source env/Scripts/activate


pip install -r requirements.txt

if [ -d "logs" ] 
then
    echo "Log folder exists." 
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
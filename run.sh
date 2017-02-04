#!/bin/sh

export FLASK_APP=main.py

commandToRun="flask run"

for var in "$@"
do
    if [ "$var" = "public" ]; then
        commandToRun+=" --host=0.0.0.0"
    elif [ "$var" = "debug" ]; then
        export FLASK_DEBUG=1
    fi
done

eval $commandToRun

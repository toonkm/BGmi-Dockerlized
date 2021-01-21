#!/bin/bash
export BGMI_PATH="/app"
export BANGUMI_PATH="/data"

if [ $1 = "start" ]; then
    if [ -z "$(ls -A $BGMI_PATH)" ]; then
        echo "Can't find any file in /app folder. initialing"
        bgmi
        echo "Get environment and configure"
        /script/config.sh
    else 
        if [ "$OVERRIDE" = true ]; then
        echo "Overriding setting..."
        /script/config.sh
        fi
    fi
    bgmi install
    bgmi_http --port=80 --address=0.0.0.0
else
    $@
fi
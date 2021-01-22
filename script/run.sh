#!/bin/bash
export BGMI_LOG=debug
if [ $1 = "start" ]; then
    if [ ! -f /app/initfile ]; then
        echo "Can't find initfile in /app folder. initialing"
        touch /app/initfile
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
    bgmi cal --download-cover
    bgmi_http --port=80 --address=0.0.0.0
else
    $@
fi
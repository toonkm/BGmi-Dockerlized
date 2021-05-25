#!/bin/bash
#Hardcode
bgmi config SAVE_PATH $BANGUMI_PATH &> /dev/null
bgmi source $DATA_SOURCE
bgmi config ADMIN_TOKEN $ADMIN_TOKEN
bgmi config ENABLE_GLOBAL_FILTER $ENABLE_GLOBAL_FILTER
bgmi config GLOBAL_FILTER "$GLOBAL_FILTER"

# environment variables config

if [ -v BANGUMI_MOE_URL ]; then
    bgmi config BANGUMI_MOE_URL $BANGUMI_MOE_URL
fi
if [ -v SHARE_DMHY_URL ]; then
    bgmi config SHARE_DMHY_URL $SHARE_DMHY_URL
fi
if [ -v DOWNLOAD_DELEGATE ]; then
    bgmi config DOWNLOAD_DELEGATE $DOWNLOAD_DELEGATE
fi
if [ -v TMP_PATH ]; then
    bgmi config TMP_PATH $TMP_PATH
fi
if [ -v MAX_PAGE ]; then
    bgmi config MAX_PAGE $MAX_PAGE
fi
if [ -v DANMAKU_API_URL ]; then
    bgmi config DANMAKU_API_URL $DANMAKU_API_URL
fi
if [ -v LANG ]; then
    bgmi config LANG $LANG
fi

if [ -v TORNADO_SERVE_STATIC_FILES ]; then
    bgmi config TORNADO_SERVE_STATIC_FILES $TORNADO_SERVE_STATIC_FILES
fi

# aria2
if [ -v ARIA2_RPC_URL ]; then
    bgmi config ARIA2_RPC_URL $ARIA2_RPC_URL
fi
if [ -v ARIA2_RPC_TOKEN ]; then
    bgmi config ARIA2_RPC_TOKEN $ARIA2_RPC_TOKEN
fi

# transmission
if [ -v TRANSMISSION_RPC_URL ]; then
    bgmi config TRANSMISSION_RPC_URL $TRANSMISSION_RPC_URL
fi
if [ -v TRANSMISSION_RPC_PORT ]; then
    bgmi config TRANSMISSION_RPC_PORT $TRANSMISSION_RPC_PORT
fi
if [ -v TRANSMISSION_RPC_USERNAME ]; then
    bgmi config TRANSMISSION_RPC_USERNAME $TRANSMISSION_RPC_USERNAME
fi
if [ -v TRANSMISSION_RPC_PASSWORD ]; then
    bgmi config TRANSMISSION_RPC_PASSWORD $TRANSMISSION_RPC_PASSWORD
fi

# deluge
if [ -v DELUGE_RPC_URL ]; then
    bgmi config DELUGE_RPC_URL $DELUGE_RPC_URL
fi
if [ -v DELUGE_RPC_PASSWORD ]; then
    bgmi config DELUGE_RPC_PASSWORD $DELUGE_RPC_PASSWORD
fi
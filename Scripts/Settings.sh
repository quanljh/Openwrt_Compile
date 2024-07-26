#!/bin/bash

STARTUP_SCRIPT=$GITHUB_WORKSPACE/Configs/999-custom-startup.sh
UCI_DEFAULTS_SCRIPT=./files/etc/uci-defaults/999-custom-startup.sh
ENV_FILE=./files/etc/uci-defaults/999-custom-env

mkdir -p ./files/etc/uci-defaults/
cp -rf $STARTUP_SCRIPT $UCI_DEFAULTS_SCRIPT

# Create the environment file
echo "root_password=\"$WRT_PASSWORD\"" > $ENV_FILE
echo "lan_ip_address=\"$WRT_IP\"" >> $ENV_FILE
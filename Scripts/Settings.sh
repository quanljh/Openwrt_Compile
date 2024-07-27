#!/bin/bash

STARTUP_SCRIPT=$GITHUB_WORKSPACE/Configs/999-custom-startup.sh
UCI_DEFAULTS_SCRIPT=./files/etc/uci-defaults/999-custom-startup.sh

mkdir -p ./files/etc/uci-defaults/
cp -rf $STARTUP_SCRIPT $UCI_DEFAULTS_SCRIPT

sed -i "s/lan_ip_address=".*"/lan_ip_address=\"$WRT_IP\"/g" $UCI_DEFAULTS_SCRIPT
sed -i "s/root_password=".*"/root_password=\"$WRT_PASSWORD\"/g" $UCI_DEFAULTS_SCRIPT
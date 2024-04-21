#!/bin/bash

STARTUP_SCRIPT="./Configs/999-custom-startup.sh"

sed -i "s/lan_ip_address=".*"/lan_ip_address="$WRT_IP"/g" $STARTUP_SCRIPT
sed -i "s/root_password=".*"/root_password="$WRT_PASSWORD"/g" $STARTUP_SCRIPT

cp -rf $STARTUP_SCRIPT ./wrt/files/etc/uci-defaults

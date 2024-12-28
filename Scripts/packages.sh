update_smartdns() {
	local MAKEFILE_SRC="$GITHUB_WORKSPACE/Makefiles/smartdns/Makefile"
	local MAKEFILE_DST="./feeds/packages/net/smartdns/Makefile"

	mv -f $MAKEFILE_SRC $MAKEFILE_DST
}

update_xray() {
	local MAKEFILE_SRC="$GITHUB_WORKSPACE/Makefiles/xray/Makefile"
	local MAKEFILE_DST="./feeds/packages/net/xray-core/Makefile"

	mv -f $MAKEFILE_SRC $MAKEFILE_DST
}

update_geoview() {
	local MAKEFILE_SRC="https://raw.githubusercontent.com/xiaorouji/openwrt-passwall-packages/refs/heads/main/v2ray-geoview/Makefile"
	local MAKEFILE_DST="./package/feeds/packages/geoview"

	mkdir $MAKEFILE_DST

	curl -o $MAKEFILE_DST/Makefile $MAKEFILE_SRC
}

update_smartdns
update_xray
update_geoview
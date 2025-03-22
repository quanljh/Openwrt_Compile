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
	local MAKEFILE_SRC="https://raw.githubusercontent.com/xiaorouji/openwrt-passwall-packages/refs/heads/main/geoview/Makefile"
	local MAKEFILE_DST="./package/feeds/packages/geoview"

	curl -o $MAKEFILE_DST/Makefile $MAKEFILE_SRC
}

update_dae() {
	local MAKEFILE_SRC="$GITHUB_WORKSPACE/Makefiles/dae/Makefile"
	local MAKEFILE_DST="./feeds/packages/net/dae/Makefile"

	mv -f $MAKEFILE_SRC $MAKEFILE_DST
}

update_daed() {
	local MAKEFILE_SRC="$GITHUB_WORKSPACE/Makefiles/daed/Makefile"
	local MAKEFILE_DST="./feeds/packages/net/daed/Makefile"

	mv -f $MAKEFILE_SRC $MAKEFILE_DST
}

update_smartdns
update_xray
update_geoview
update_dae
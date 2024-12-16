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


update_smartdns
update_xray
UPDATE_PACKAGE() {
	local PKG_NAME=$1
	local PKG_REPO=$2
	local PKG_BRANCH=$3
	local POST_UPDATE_METHOD=$4
	local REPO_NAME=$(echo $PKG_REPO | cut -d '/' -f 2)

	local PKG_PATH=$(find ./luci/ ./packages/ -maxdepth 3 -type d -iname "*$PKG_NAME*" -prune)

	if [ -z "$PKG_PATH" ]; then
		echo "Package path is not found."
  		exit 1
	fi

	rm -rf $PKG_PATH

	git clone --depth=1 --single-branch --branch $PKG_BRANCH "https://github.com/$PKG_REPO.git"

	mv -f $REPO_NAME/$PKG_NAME $PKG_PATH

	rm -rf $REPO_NAME

	echo "Package $PKG_NAME is updated."

	if [ -n "$POST_UPDATE_METHOD" ]; then
		$POST_UPDATE_METHOD "$PKG_PATH"
	fi
}

UPDATE_PASSWALL_CODE() {
	local PKG_PATH=$1

	if [ -z "$PKG_PATH" ]; then
		echo "Package path is not found."
  		exit 1
	fi

	sed -i '/_M.xray/,/}/s/get_url = gh_pre_release_url/get_url = gh_release_url/' $PKG_PATH/luasrc/passwall/com.lua

	echo "Passwall code is updated."
}

UPDATE_SMARTDNS "luci-app-passwall" "xiaorouji/openwrt-passwall" "main" "UPDATE_PASSWALL_CODE"
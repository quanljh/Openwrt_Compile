UPDATE_PACKAGE() {
	local PKG_NAME=$1
	local PKG_REPO=$2
	local PKG_BRANCH=$3
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
}


UPDATE_PACKAGE "luci-app-passwall" "xiaorouji/openwrt-passwall" "main"
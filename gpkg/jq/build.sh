TERMUX_PKG_HOMEPAGE=http://stedolan.github.io/jq/
TERMUX_PKG_DESCRIPTION="Command-line JSON processor"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux-pacman"
TERMUX_PKG_VERSION="1.7.1"
TERMUX_PKG_SRCURL=https://github.com/stedolan/jq/releases/download/jq-$TERMUX_PKG_VERSION/jq-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=478c9ca129fd2e3443fe27314b455e211e0d8c60bc8ff7df703873deeee580c2
TERMUX_PKG_DEPENDS="oniguruma-glibc"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-posix-api"
TERMUX_PKG_BUILD_IN_SRC=true
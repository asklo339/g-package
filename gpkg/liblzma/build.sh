TERMUX_PKG_HOMEPAGE=https://tukaani.org/xz/
TERMUX_PKG_DESCRIPTION="XZ-format compression library"
TERMUX_PKG_LICENSE="LGPL-2.1, GPL-2.0, GPL-3.0"
TERMUX_PKG_LICENSE_FILE="COPYING, COPYING.GPLv2, COPYING.GPLv3, COPYING.LGPLv2.1"
TERMUX_PKG_MAINTAINER="@termux-pacman"
TERMUX_PKG_VERSION="5.6.2"
TERMUX_PKG_SRCURL=https://github.com/tukaani-project/xz/releases/download/v$TERMUX_PKG_VERSION/xz-$TERMUX_PKG_VERSION.tar.xz
TERMUX_PKG_SHA256=a9db3bb3d64e248a0fae963f8fb6ba851a26ba1822e504dc0efd18a80c626caf
TERMUX_PKG_DEPENDS="glibc, bash-glibc"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--enable-sandbox=no
"
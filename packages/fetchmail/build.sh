TERMUX_PKG_HOMEPAGE=https://www.fetchmail.info/
TERMUX_PKG_DESCRIPTION="A remote-mail retrieval utility"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_LICENSE_FILE="COPYING"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="6.4.39"
TERMUX_PKG_SRCURL=https://sourceforge.net/projects/fetchmail/files/branch_${TERMUX_PKG_VERSION:0:3}/fetchmail-$TERMUX_PKG_VERSION.tar.xz
TERMUX_PKG_SHA256=75109a1f307b538155fa05f5ef298e8298cb4deae95aed24c16b38d36ff0a186
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="openssl"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--with-ssl=$TERMUX_PREFIX"
TERMUX_PKG_RM_AFTER_INSTALL="lib/python${TERMUX_PYTHON_VERSION}/site-packages/__pycache__"
TERMUX_PKG_PYTHON_COMMON_DEPS="wheel"
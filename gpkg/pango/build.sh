TERMUX_PKG_HOMEPAGE=https://www.pango.org/
TERMUX_PKG_DESCRIPTION="Library for laying out and rendering text"
TERMUX_PKG_LICENSE="LGPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-pacman"
TERMUX_PKG_VERSION=1.54.0
TERMUX_PKG_SRCURL=https://gitlab.gnome.org/GNOME/pango/-/archive/${TERMUX_PKG_VERSION}/pango-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=317f366bb255282d3e64ccf95b1d57cbea8636578b199c158235e1f257e5167f
TERMUX_PKG_DEPENDS="libcairo-glibc, fribidi-glibc, harfbuzz-glibc, libthai-glibc, libxft-glibc"
TERMUX_PKG_BUILD_DEPENDS="gobject-introspection-glibc"
TERMUX_PKG_HOMEPAGE=https://geos.osgeo.org/
TERMUX_PKG_DESCRIPTION="Geometry Engine, C++ port of the Java Topology Suite"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="Henrik Grimler @Grimler91"
TERMUX_PKG_VERSION="3.13.0beta1"
TERMUX_PKG_SRCURL=https://github.com/libgeos/geos/archive/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=951b79aeadeb710b39a9323da0f17597370530abea83f036926b27efa2638525
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libc++"
TERMUX_PKG_BREAKS="libgeos-dev"
TERMUX_PKG_REPLACES="libgeos-dev"
TERMUX_PKG_GROUPS="science"
TERMUX_PKG_FORCE_CMAKE=true
TERMUX_PKG_HOMEPAGE=https://github.com/KhronosGroup/Vulkan-Utility-Libraries
TERMUX_PKG_DESCRIPTION="Utility Libraries for Vulkan"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.3.293"
TERMUX_PKG_SRCURL=https://github.com/KhronosGroup/Vulkan-Utility-Libraries/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=c983280edddd728ff57649bc8b6c912120d26019d95b032d7300233d981bbe21
TERMUX_PKG_BUILD_DEPENDS="libc++, vulkan-headers (=${TERMUX_PKG_VERSION})"
TERMUX_PKG_NO_STATICSPLIT=true
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+.\d+.\d+"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
"
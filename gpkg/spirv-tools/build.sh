TERMUX_PKG_HOMEPAGE=https://github.com/KhronosGroup/SPIRV-Tools
TERMUX_PKG_DESCRIPTION="SPIR-V Tools"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux-pacman"
TERMUX_PKG_VERSION="2024.2"
TERMUX_PKG_SRCURL=https://github.com/KhronosGroup/SPIRV-Tools/archive/refs/tags/v${TERMUX_PKG_VERSION}.rc1.tar.gz
TERMUX_PKG_SHA256=e433d40b5b4bf2bc3c819e34d7bf6194937df4d74e2f8dee8012bd8fd69e7f8a
TERMUX_PKG_DEPENDS="gcc-libs-glibc"
TERMUX_PKG_BUILD_DEPENDS="spirv-headers-glibc"
TERMUX_PKG_NO_STATICSPLIT=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DSPIRV-Headers_SOURCE_DIR=$TERMUX_PREFIX
-DSPIRV_WERROR=OFF
"
TERMUX_PKG_HOMEPAGE=https://github.com/KhronosGroup/Vulkan-Headers
TERMUX_PKG_DESCRIPTION="Vulkan Header files and API registry"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.3.293"
TERMUX_PKG_SRCURL=https://github.com/KhronosGroup/Vulkan-Headers/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=51a651f6dbb70edefb41ca55cef1cd4b33e200e6b5fd8254b5a9a20fddcaa8f4
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+\.\d+\.\d+"
# Requires clang-scan-deps for building c++ module
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DVULKAN_HEADERS_ENABLE_MODULE=OFF
"


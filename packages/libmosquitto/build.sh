TERMUX_PKG_HOMEPAGE=https://mosquitto.org/
TERMUX_PKG_DESCRIPTION="MQTT library"
TERMUX_PKG_LICENSE="EPL-1.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="2.0.18"
TERMUX_PKG_SRCURL=https://mosquitto.org/files/source/mosquitto-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=d665fe7d0032881b1371a47f34169ee4edab67903b2cd2b4c083822823f4448a
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="c-ares, libc++, openssl"
TERMUX_PKG_BREAKS="libmosquitto-dev"
TERMUX_PKG_REPLACES="libmosquitto-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DWITH_BUNDLED_DEPS=ON
-DWITH_THREADING=ON
-DWITH_TLS_PSK=OFF
-DWITH_WEBSOCKETS=ON
-DWITH_SRV=ON
"
TERMUX_PKG_SERVICE_SCRIPT=("mosquitto" 'exec mosquitto 2>&1')
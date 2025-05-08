TERMUX_PKG_HOMEPAGE=https://github.com/cassia-org/alsa-oboe
TERMUX_PKG_DESCRIPTION="ALSA driver for Oboe audio library"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=1.0
TERMUX_PKG_SRCURL=https://github.com/cassia-org/alsa-oboe.git
TERMUX_PKG_DEPENDS="libc++, liboboe, alsa-lib"
TERMUX_PKG_BUILD_DEPENDS="cmake, git"
TERMUX_PKG_NO_STATICSPLIT=true

termux_step_pre_configure() {
	# Ensure PIC is enabled for Termux
	CFLAGS+=" -fPIC"
	CXXFLAGS+=" -fPIC"
}

termux_step_make() {
	# Create and enter build directory
	mkdir -p build
	cd build || exit 1

	# Configure with CMake
	cmake .. \
		-DCMAKE_C_FLAGS="-fPIC" \
		-DCMAKE_CXX_FLAGS="-fPIC" \
		-DCMAKE_POSITION_INDEPENDENT_CODE=ON \
		-DCMAKE_INSTALL_PREFIX="$TERMUX_PREFIX"

	# Build with 8 jobs
	make -j$TERMUX_PKG_MAKE_PROCESSES
}

termux_step_make_install() {
	# Install from build directory
	cd build || exit 1
	make install
}

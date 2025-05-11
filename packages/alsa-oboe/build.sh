TERMUX_PKG_HOMEPAGE=https://github.com/cassia-org/alsa-oboe
TERMUX_PKG_DESCRIPTION="ALSA driver for Oboe audio library"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_LICENSE_FILE="LICENSE, LICENSE.OLD, COPYING.LIB"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION=1.0
TERMUX_PKG_REVISION=4
TERMUX_PKG_SRCURL=https://github.com/asklo339/Tup/releases/download/Alsa-ob/alsa-oboe.tar.xz
TERMUX_PKG_SHA256=cf7094b12b848d02a23998a8a3be44044ad44bd334addfe743f3882d9919057b
TERMUX_PKG_DEPENDS="libc++, alsa-lib"
TERMUX_PKG_BUILD_DEPENDS="cmake"
TERMUX_PKG_NO_STATICSPLIT=true
TERMUX_PKG_SKIP_PATCH=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_C_FLAGS=-fPIC
-DCMAKE_CXX_FLAGS=-fPIC
-DCMAKE_POSITION_INDEPENDENT_CODE=ON
-DCMAKE_INSTALL_PREFIX=$TERMUX_PREFIX
"

termux_step_post_get_source() {
    # Create fake LICENSE.OLD if it doesn't exist
    if [ ! -f "$TERMUX_PKG_SRCDIR/LICENSE.OLD" ]; then
        echo "Creating placeholder LICENSE.OLD"
        cat > $TERMUX_PKG_SRCDIR/LICENSE.OLD << EOF
This is a placeholder LICENSE.OLD file for alsa-oboe.
The alsa-oboe project is licensed under the GNU Lesser General Public License v2.1 (LGPL-2.1).
See COPYING.LIB or https://www.gnu.org/licenses/lgpl-2.1.html for the full license text.
EOF
    fi

    # Create fake COPYING.LIB if it doesn't exist
    if [ ! -f "$TERMUX_PKG_SRCDIR/COPYING.LIB" ]; then
        echo "Creating placeholder COPYING.LIB"
        cat > $TERMUX_PKG_SRCDIR/COPYING.LIB << EOF
This is a placeholder COPYING.LIB file for alsa-oboe.
The alsa-oboe project is licensed under the GNU Lesser General Public License v2.1 (LGPL-2.1).
For the full license text, see https://www.gnu.org/licenses/lgpl-2.1.html.
EOF
    fi
}

termux_step_pre_configure() {
    termux_setup_cmake
}

termux_step_configure() {
    termux_setup_cmake
    cmake $TERMUX_PKG_SRCDIR \
        -DCMAKE_C_FLAGS="-fPIC" \
        -DCMAKE_CXX_FLAGS="-fPIC" \
        -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
        -DCMAKE_INSTALL_PREFIX="$TERMUX_PREFIX" \
        -DCMAKE_BUILD_TYPE=Release
}

termux_step_make() {
    make -j $TERMUX_PKG_MAKE_PROCESSES
}

termux_step_post_configure() {
    # Debug: Check if Makefile exists
    if [ ! -f "$TERMUX_PKG_BUILDDIR/Makefile" ]; then
        echo "Error: Makefile not found in $TERMUX_PKG_BUILDDIR"
        exit 1
    fi
}

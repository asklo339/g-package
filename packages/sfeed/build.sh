TERMUX_PKG_HOMEPAGE="https://codemadness.org/sfeed-simple-feed-parser.html"
TERMUX_PKG_DESCRIPTION="Shell-script/crontab oriented feed aggregator and parser utility (curses-based reader included)"
TERMUX_PKG_LICENSE="ISC"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="2.0"
TERMUX_PKG_SRCURL="https://codemadness.org/releases/sfeed/sfeed-$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=8e6a7e6e1d7e86034ae27035e37a8f7fc98bc25fe35120bd18ff07e04f18e91d
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="ncurses"
TERMUX_PKG_RECOMMENDS="curl"
TERMUX_PKG_SUGGESTS="lynx, termux-tools"
TERMUX_PKG_BUILD_IN_SRC=true
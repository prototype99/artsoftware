# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit eutils

DESCRIPTION="A rotating maze game written in C with XLib"
HOMEPAGE="http://dusthillguy.ddns.net"
SRC_URI="http://dusthillguy.ddns.net/folder/${PN}linux.tar.bz2"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="+X"

DEPEND="
	x11-libs/libX11
	virtual/libc
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/MagicMaze_linux"
src_compile() {
	gcc -lX11 -lm newmaze.c -o magicmaze
}

src_install() {
	install -dm755 ${D}/usr/bin
	install -m755 magicmaze ${D}/usr/bin/
}

# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit eutils flag-o-matic multilib

DESCRIPTION="An abstract library implementation of a VT220/xterm/ECMA-48 terminal emulator"
HOMEPAGE="http://www.leonerd.org.uk/code/libvterm/"
SRC_URI="https://bazaar.launchpad.net/~libvterm/libvterm/trunk/tarball/770 -> ${PN}-770.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	sys-devel/libtool
	virtual/pkgconfig"

RDEPEND="!dev-libs/libvterm-neovim"

S=${WORKDIR}/~libvterm/libvterm/trunk

src_compile() {
	append-cflags -fPIC
	emake PREFIX="${EPREFIX}/usr" LIBDIR="${EPREFIX}/usr/$(get_libdir)"
}

src_install() {
	emake \
		PREFIX="${EPREFIX}/usr" \
		LIBDIR="${EPREFIX}/usr/$(get_libdir)" \
		DESTDIR="${D}" install
	prune_libtool_files
}

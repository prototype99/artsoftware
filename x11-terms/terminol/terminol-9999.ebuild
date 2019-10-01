# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit eutils git-r3
DESCRIPTION="A simple terminal emulator"
HOMEPAGE="https://github.com/bagnose/terminol"
EGIT_REPO_URI="https://github.com/bagnose/${PN}"
# SRC_URI="https://github.com/bagnose/${PN}/archive/v${PV}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
DEPEND="dev-libs/libpcre
		x11-libs/libxkbcommon
		x11-libs/libxcb
		x11-libs/pango
		x11-libs/cairo
		>=sys-devel/gcc-5.4.0:*"
RDEPEND="${DEPEND}"
src_configure() {
	./configure \
		${S}/build \
		release \
		gnu
}

src_compile() {
	cd "${S}/build"
	emake CXXFLAGS="-Wno-error=deprecated -std=c++0x"
}

src_install() {
	cd "${S}/build"
	emake INSTALLDIR="${D}/usr" install
	install -Dm644 "${S}/doc/sample-config" "${D}/usr/share/doc/${PN}/sample-config"
}

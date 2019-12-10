# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils flag-o-matic multilib bzr

DESCRIPTION="A GTK/Pango-based terminal that uses libvterm to provide terminal emulation"
HOMEPAGE="http://www.leonerd.org.uk/code/pangoterm/"
# SRC_URI="https://dev.gentoo.org/~tranquility/distfiles/${P}.tar.gz"
EBZR_REPO_URI="https://launchpad.net/pangoterm"
EBZR_REVISION=614

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-libs/libvterm-9999"
RDEPEND="${DEPEND}
	dev-libs/glib:2
	x11-libs/cairo
	x11-libs/gdk-pixbuf:2
	x11-libs/gtk+:2
	x11-libs/pango
"

PATCHES=(
	"${FILESDIR}/${P}-fix_gtkwindow.patch"
)

# S=${WORKDIR}/pangoterm-0

src_install() {
	emake PREFIX="/usr" DESTDIR="${D}" install
}

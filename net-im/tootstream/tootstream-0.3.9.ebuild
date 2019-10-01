# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python3_4 python3_5 python3_6 )

inherit distutils-r1

DESCRIPTION="A command line interface for interacting with Mastodon instances"
HOMEPAGE="http://git.art-software.fr/electron/tootstream"

if [[ ${PV} == "9999" ]] ; then
	EGIT_REPO_URI="http://git.art-software.fr/electron/${PN}.git"
	inherit git-r3
	SRC_URI=""
else
	SRC_URI="http://git.art-software.fr/electron/${PN}/archive/v${PV}.tar.gz"
	S="${WORKDIR}/${PN}"
fi
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"
IUSE=""

RDEPEND="
	>=dev-python/colored-1.3.5
	>=dev-python/click-6.6
	>=dev-python/Mastodon-1.2.1
"
DEPEND="
	${RDEPEND}
	dev-python/wheel
"

# INSTALL contains list of optional deps
DOCS=()

python_install() {
	distutils-r1_python_install
}

src_prepare() {
	distutils-r1_src_prepare
}

src_compile() {
	distutils-r1_src_compile
}

src_install() {
	distutils-r1_src_install
}

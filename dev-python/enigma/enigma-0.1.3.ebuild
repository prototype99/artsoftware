# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python3_4 python3_5 python3_6 )

inherit distutils-r1

DESCRIPTION="Summary: Reproduction de la machine à chiffrer du même nom, d'après un script par Bertrand Audibert"
HOMEPAGE="http://git.art-software.fr/electron/enigma"

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

DEPEND="dev-python/wheel"

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

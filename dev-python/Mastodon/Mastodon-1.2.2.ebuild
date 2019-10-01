# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python3_4 python3_5 python3_6 )

inherit distutils-r1

DESCRIPTION="Python wrapper for the Mastodon API"
HOMEPAGE="https://pypi.python.org/pypi/Mastodon.py"

SRC_URI="https://pypi.python.org/packages/4b/8e/a041ce004d4cc026ff931b3f664db959cb1ba5902e2caf9bd6ec726723ab/Mastodon.py-${PV}.tar.gz"
S="${WORKDIR}/${PN}.py-${PV}"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"
IUSE=""

RDEPEND="
	dev-python/decorator
	dev-python/six
	dev-python/pytz
	dev-python/requests
	dev-python/python-dateutil
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

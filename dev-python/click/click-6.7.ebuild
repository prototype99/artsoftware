# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python3_4 python3_5 python3_6 )

inherit distutils-r1

DESCRIPTION="A simple wrapper around optparse for powerful command line utilities"
HOMEPAGE="https://pypi.python.org/pypi/click"

SRC_URI="https://pypi.python.org/packages/95/d9/c3336b6b5711c3ab9d1d3a80f1a3e2afeb9d8c02a7166462f6cc96570897/${P}.tar.gz"
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

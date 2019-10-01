# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python3_4 python3_5 python3_6 )

inherit distutils-r1

DESCRIPTION="Simple library for color and formatting to terminal"
HOMEPAGE="https://pypi.python.org/pypi/colored"

SRC_URI="https://pypi.python.org/packages/19/be/85e6c8c1fd9b3d15d4500531ccbb164854d427690ad41c9ce9222ccabaf5/${P}.tar.gz"
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

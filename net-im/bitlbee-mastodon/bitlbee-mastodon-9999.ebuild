# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils autotools git-2

DESCRIPTION="Mastodon protocol plugin for BitlBee"
HOMEPAGE="https://github.com/kensanata/bitlbee-mastodon"
EGIT_REPO_URI="https://github.com/kensanata/bitlbee-mastodon.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="debug"

RDEPEND="
	>=net-im/bitlbee-3.5[plugins]
	>=dev-libs/glib-2.32"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_prepare() {
	eautoreconf
}

src_configure() {
	econf \
		$(use_enable debug) \
		--enable-minimal-flags
}

src_install() {
	default
	prune_libtool_files
}

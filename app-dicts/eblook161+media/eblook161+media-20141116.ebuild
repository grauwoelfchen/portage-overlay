# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Interactive search utility for electronic dictionaries"
HOMEPAGE="http://ikazuhiro.s206.xrea.com/staticpages/index.php/eblook"
SRC_URI="http://ikazuhiro.s206.xrea.com/filemgmt/visit.php/177 -> eblook161+media-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="readline pager"

S="${WORKDIR}/eblook-1.6.1+media-${PV}"

DEPEND=">=dev-libs/eb-4.2.2
	readline? ( sys-libs/readline )"
RDEPEND="${DEPEND}"

src_configure() {
	econf --with-eb-conf=/etc/eb.conf
	econf $(use_with readline)
	econf $(use_with pager)
}

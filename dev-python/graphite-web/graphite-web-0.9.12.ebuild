# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="A highly scalable real-time graphing system"
HOMEPAGE="https://github.com/graphite-project/graphite-web"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
	=dev-python/carbon-0.9.12[${PYTHON_USEDEP}]
	dev-python/twisted-core
	dev-python/whisper[${PYTHON_USEDEP}]
	=dev-python/django-1.5*[${PYTHON_USEDEP}]
	dev-python/django-tagging[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	dev-python/pycairo[${PYTHON_USEDEP}]
	dev-python/pyparsing[${PYTHON_USEDEP}]"

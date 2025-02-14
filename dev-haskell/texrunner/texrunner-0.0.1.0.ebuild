# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Functions for running Tex from Haskell"
HOMEPAGE="http://hackage.haskell.org/package/texrunner"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # missing deps?

RDEPEND=">=dev-haskell/attoparsec-0.10:=[profile?] <dev-haskell/attoparsec-1.0:=[profile?]
	>=dev-haskell/io-streams-1.1:=[profile?] <dev-haskell/io-streams-2.0:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-3.0:=[profile?]
	>=dev-haskell/temporary-1.2:=[profile?] <dev-haskell/temporary-2.0:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hunit
		dev-haskell/lens
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit )
"

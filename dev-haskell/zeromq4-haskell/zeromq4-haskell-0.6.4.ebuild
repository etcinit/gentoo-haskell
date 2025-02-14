# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Bindings to ZeroMQ 4.x"
HOMEPAGE="https://github.com/twittner/zeromq-haskell/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/async-2.0:=[profile?] <dev-haskell/async-3.0:=[profile?]
	>=dev-haskell/exceptions-0.6:=[profile?] <dev-haskell/exceptions-1.0:=[profile?]
	>=dev-haskell/semigroups-0.8:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?]
	>=dev-lang/ghc-7.6.1:=
	net-libs/zeromq
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	virtual/pkgconfig
	test? ( >=dev-haskell/quickcheck-2.6
		>=dev-haskell/tasty-0.8
		>=dev-haskell/tasty-hunit-0.8
		>=dev-haskell/tasty-quickcheck-0.8 )
"

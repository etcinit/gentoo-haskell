# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Encode and decode binary streams using the pipes and binary libraries"
HOMEPAGE="https://github.com/k0001/pipes-binary"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.6:=[profile?] <dev-haskell/binary-0.9:=[profile?]
	>=dev-haskell/pipes-4.0:=[profile?] <dev-haskell/pipes-4.2:=[profile?]
	>=dev-haskell/pipes-bytestring-2.0:=[profile?] <dev-haskell/pipes-bytestring-2.2:=[profile?]
	>=dev-haskell/pipes-parse-3.0:=[profile?] <dev-haskell/pipes-parse-3.1:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.6:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/binary-0.6 <dev-haskell/binary-0.8
		>=dev-haskell/lens-family-core-1.0 <dev-haskell/lens-family-core-1.3
		>=dev-haskell/smallcheck-1.0 <dev-haskell/smallcheck-1.2
		>=dev-haskell/tasty-0.8 <dev-haskell/tasty-0.12
		>=dev-haskell/tasty-hunit-0.8 <dev-haskell/tasty-hunit-0.10
		>=dev-haskell/tasty-smallcheck-0.2 <dev-haskell/tasty-smallcheck-0.9
		>=dev-haskell/transformers-0.2 <dev-haskell/transformers-0.5 )
"

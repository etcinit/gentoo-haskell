# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Deterministic allocation and freeing of scarce resources"
HOMEPAGE="https://github.com/snoyberg/conduit"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/exceptions-0.5:=[profile?]
	>=dev-haskell/lifted-base-0.1:=[profile?]
	dev-haskell/mmorph:=[profile?]
	>=dev-haskell/monad-control-0.3.1:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/transformers-0.2.2:=[profile?]
	>=dev-haskell/transformers-base-0.4.4:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?] <dev-haskell/transformers-compat-0.6:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hspec-1.3 )
"

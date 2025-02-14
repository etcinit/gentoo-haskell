# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A JavaScript push mechanism based on the comet idiom"
HOMEPAGE="https://github.com/ku-fpg/kansas-comet/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.9:=[profile?] <dev-haskell/aeson-0.12:=[profile?]
	>=dev-haskell/data-default-class-0.0:=[profile?] <dev-haskell/data-default-class-0.1:=[profile?]
	>=dev-haskell/scotty-0.10:=[profile?] <dev-haskell/scotty-0.12:=[profile?]
	>=dev-haskell/stm-2.2:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-haskell/text-0.11.3.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-haskell/unordered-containers-0.2.3:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"

src_prepare() {
	cabal_chdeps \
		'unordered-containers >= 0.2.3    && < 0.2.6' 'unordered-containers >= 0.2.3' \
		'scotty               >= 0.10     && < 0.11' 'scotty               >= 0.10' \
		'aeson                >= 0.9      && < 0.11' 'aeson                >= 0.9'
}

# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="UHC utilities"
HOMEPAGE="https://github.com/UU-ComputerScience/uhc-util"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.5:=[profile?]
	>=dev-haskell/fclabels-2.0.3:=[profile?]
	>=dev-haskell/fgl-5.4:=[profile?]
	>=dev-haskell/hashable-1.2.4:=[profile?]
	>=dev-haskell/logict-state-0.1.0.0:=[profile?]
	>=dev-haskell/mtl-2:=[profile?]
	>=dev-haskell/syb-0.3.6:=[profile?]
	>=dev-haskell/time-compat-0.1.0.1:=[profile?]
	>=dev-haskell/uulib-0.9.19:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999
#hackport: flags: sse42:cpu_flags_x86_sse4_2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Mutable hash tables in the ST monad"
HOMEPAGE="https://github.com/gregorycollins/hashtables"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE="bounds-checking cpu_flags_x86_sse4_2 debug portable +unsafe-tricks"

RDEPEND="dev-haskell/primitive:=[profile?]
	>=dev-haskell/vector-0.7:=[profile?] <dev-haskell/vector-0.12:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	>=dev-haskell/hashable-1.1:=[profile?]
	<dev-haskell/hashable-1.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag bounds-checking bounds-checking) \
		$(cabal_flag debug debug) \
		$(cabal_flag portable portable) \
		$(cabal_flag cpu_flags_x86_sse4_2 sse42) \
		$(cabal_flag unsafe-tricks unsafe-tricks)
}

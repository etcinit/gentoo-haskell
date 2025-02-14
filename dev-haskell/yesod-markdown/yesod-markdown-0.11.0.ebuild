# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Tools for using markdown in a yesod application"
HOMEPAGE="https://github.com/pbrisbin/yesod-markdown"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=app-text/pandoc-1.16:=[profile?] <app-text/pandoc-1.17:=[profile?]
	>=dev-haskell/blaze-html-0.5:=[profile?] <dev-haskell/blaze-html-0.9:=[profile?]
	>=dev-haskell/blaze-markup-0.5:=[profile?] <dev-haskell/blaze-markup-0.8:=[profile?]
	>=dev-haskell/persistent-0.9:=[profile?]
	>=dev-haskell/shakespeare-2.0:=[profile?] <dev-haskell/shakespeare-2.1:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-2.0:=[profile?]
	>=dev-haskell/xss-sanitize-0.3.1:=[profile?] <dev-haskell/xss-sanitize-0.4:=[profile?]
	>=dev-haskell/yesod-core-1.2:=[profile?] <dev-haskell/yesod-core-1.5:=[profile?]
	>=dev-haskell/yesod-form-1.3:=[profile?] <dev-haskell/yesod-form-1.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	|| ( <dev-haskell/texmath-0.6.5.1:=[profile?]
		|| ( ( >dev-haskell/texmath-0.6.5.1:=[profile?] <dev-haskell/texmath-0.6.7:=[profile?] )
			>dev-haskell/texmath-0.6.7:=[profile?] ) )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( dev-haskell/hspec )
"

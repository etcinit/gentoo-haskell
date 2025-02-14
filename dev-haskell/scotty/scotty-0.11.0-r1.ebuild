# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell web framework inspired by Ruby's Sinatra, using WAI and Warp"
HOMEPAGE="https://github.com/scotty-web/scotty"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.6.2.1:=[profile?] <dev-haskell/aeson-0.12:=[profile?]
	>=dev-haskell/blaze-builder-0.3.3.0:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/case-insensitive-1.0.0.1:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/data-default-class-0.0.1:=[profile?] <dev-haskell/data-default-class-0.1:=[profile?]
	dev-haskell/fail:=[profile?]
	>=dev-haskell/http-types-0.8.2:=[profile?] <dev-haskell/http-types-0.10:=[profile?]
	>=dev-haskell/monad-control-1.0.0.3:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/mtl-2.1.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/nats-0.1:=[profile?] <dev-haskell/nats-2:=[profile?]
	>=dev-haskell/network-2.6.0.2:=[profile?] <dev-haskell/network-2.7:=[profile?]
	>=dev-haskell/regex-compat-0.95.1:=[profile?] <dev-haskell/regex-compat-0.96:=[profile?]
	>=dev-haskell/text-0.11.3.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.3.0.0:=[profile?] <dev-haskell/transformers-0.6:=[profile?]
	>=dev-haskell/transformers-base-0.4.1:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/transformers-compat-0.4:=[profile?] <dev-haskell/transformers-compat-0.6:=[profile?]
	>=dev-haskell/wai-3.0.0:=[profile?] <dev-haskell/wai-3.3:=[profile?]
	>=dev-haskell/wai-extra-3.0.0:=[profile?] <dev-haskell/wai-extra-3.1:=[profile?]
	>=dev-haskell/warp-3.0.0:=[profile?] <dev-haskell/warp-3.3:=[profile?]
	>=dev-lang/ghc-7.6.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( dev-haskell/async
		>=dev-haskell/hspec-2 <dev-haskell/hspec-3
		>=dev-haskell/hspec-wai-0.6.3
		dev-haskell/lifted-base )
"

src_prepare() {
	cabal_chdeps \
		'aeson               >= 0.6.2.1  && < 0.11' 'aeson >= 0.6.2.1'
}

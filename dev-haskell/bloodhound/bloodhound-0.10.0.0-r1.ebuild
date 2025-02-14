# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="ElasticSearch client library for Haskell"
HOMEPAGE="https://github.com/bitemyapp/bloodhound"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # collides with vector / AC-Vector-Fancy

RDEPEND=">=dev-haskell/aeson-0.10:=[profile?]
	dev-haskell/blaze-builder:=[profile?]
	dev-haskell/data-default-class:=[profile?]
	dev-haskell/exceptions:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/http-client-0.3:=[profile?] <dev-haskell/http-client-0.5:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?] <dev-haskell/http-types-0.10:=[profile?]
	>=dev-haskell/mtl-1.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	dev-haskell/mtl-compat:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/semigroups-0.15:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-haskell/vector-0.10.9:=[profile?] <dev-haskell/vector-0.12:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( dev-haskell/derive
		dev-haskell/errors
		>=dev-haskell/hspec-1.8
		dev-haskell/quickcheck
		dev-haskell/quickcheck-properties
		>=dev-haskell/unordered-containers-0.2.5.0 <dev-haskell/unordered-containers-0.3 )
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-aeson-0.11.patch

	cabal_chdeps \
		'hspec                >= 1.8 && <2.2' 'hspec                >= 1.8' \
		'aeson            >= 0.10    && <0.11' 'aeson            >= 0.10'
}

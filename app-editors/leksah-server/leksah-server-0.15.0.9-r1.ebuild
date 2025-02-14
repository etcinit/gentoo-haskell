# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Metadata collection for leksah"
HOMEPAGE="http://leksah.org"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+network-uri +threaded"

RDEPEND=">=dev-haskell/attoparsec-0.10.0.3:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/attoparsec-conduit-1.0.1.2:=[profile?] <dev-haskell/attoparsec-conduit-1.2:=[profile?]
	>=dev-haskell/binary-0.5.0.0:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	>=dev-haskell/binary-shared-0.8:=[profile?] <dev-haskell/binary-shared-0.9:=[profile?]
	>=dev-haskell/cabal-1.10.2.0:=[profile?] <dev-haskell/cabal-1.23:=[profile?]
	>=dev-haskell/conduit-1.0.8:=[profile?] <dev-haskell/conduit-1.3:=[profile?]
	>=dev-haskell/conduit-extra-1.0.0.1:=[profile?] <dev-haskell/conduit-extra-1.2:=[profile?]
	>=dev-haskell/executable-path-0.0.3:=[profile?] <dev-haskell/executable-path-0.1:=[profile?]
	>=dev-haskell/haddock-2.7.2:=
	>=dev-haskell/hslogger-1.0.7:=[profile?] <dev-haskell/hslogger-1.3:=[profile?]
	>=dev-haskell/http-4000.1.2:=[profile?]
	>=dev-haskell/ltk-0.15.0.1:=[profile?] <dev-haskell/ltk-0.16:=[profile?]
	>=dev-haskell/parsec-2.1.0.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	dev-haskell/resourcet:=[profile?]
	>=dev-haskell/strict-0.3.2:=[profile?] <dev-haskell/strict-0.4:=[profile?]
	>=dev-haskell/text-0.11.3.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.2.2.0:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	network-uri? ( >=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-2.7:=[profile?]
			>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?] )
	!network-uri? ( >=dev-haskell/network-2.2:=[profile?] <dev-haskell/network-2.6:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10.2
	test? ( >=dev-haskell/hunit-1.2 )
"

src_prepare() {
	cabal_chdeps \
		'HUnit >=1.2 && <1.3' 'HUnit >=1.2' \
		'HTTP >=4000.1.2 && <4000.3' 'HTTP >=4000.1.2'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag network-uri network-uri) \
		$(cabal_flag threaded threaded)
}

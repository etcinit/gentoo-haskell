# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="bin test-suite"
inherit eutils git-2 haskell-cabal

MY_PN="SPL"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="source-to-source translator of a variant of ML core into C++"
HOMEPAGE="https://github.com/kayuri/HNC/wiki"
EGIT_REPO_URI="git://github.com/kayuri/HNC.git"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/adjunctions:=
	dev-haskell/bifunctors:=
	dev-haskell/hunit:=
	dev-haskell/mtl:=
	dev-haskell/newtype:=
	dev-haskell/parsec:=
	dev-haskell/quickcheck:2=
	dev-haskell/recursion-schemes:=
	dev-haskell/safe:=
	dev-haskell/transformers:=
	>=dev-haskell/unification-fd-0.10:=
	dev-haskell/uuagc:=
	>=dev-lang/ghc-7.10.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.4.0
"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	#workaround https://ghc.haskell.org/trac/ghc/ticket/9625
	export CABAL_EXTRA_CONFIGURE_FLAGS+=" --disable-executable-dynamic"
}

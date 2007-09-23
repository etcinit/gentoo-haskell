# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/xhtml/xhtml-2006.9.13.ebuild,v 1.4 2007/07/08 15:50:26 dcoutts Exp $

CABAL_FEATURES="lib profile haddock"
inherit haskell-cabal

DESCRIPTION="Haskell front-end to Functional MetaPost"
HOMEPAGE="http://cryp.to/funcmp/"
SRC_URI="http://cryp.to/funcmp/${P}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ppc ~sparc ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.6"
RDEPEND="${DEPEND} app-text/tetex"

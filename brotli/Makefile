# $NetBSD$

PROJECT=		brotli
VERSION=		0.6.0
#DISTNAME=		${PROJECT}-0.6.0
PKGNAME=		${PROJECT}-${VERSION}
CATEGORIES=		archivers
#MASTER_SITES=		${MASTER_SITE_GITHUB:=google/}
DIST_SUBDIR=		${PROJECT}

GIT_REPOSITORIES=	${PROJECT}
GIT_REPO.${PROJECT}=	git://github.com/google/${PROJECT}.git
GIT_TAG.${PROJECT}=	v${VERSION}
GIT_REVISION.${PROJECT}=46c1a881b41bb638c76247558aa04b1591af3aa7
PKGREVISION=

MAINTAINER=	pkgsrc@fluentdevelopment.com.au
HOMEPAGE=	https://github.com/google/brotli/
COMMENT=	A general-purpose, lossless compression algorithm
LICENSE=	mit

#GITHUB_TAG=	v${PKGVERSION_NOREV}

CONFIGURE_SCRIPT=	configure.cmake

WRKSRC=			${WRKDIR}/${PROJECT}
USE_LANGUAGES=		c c++
USE_CMAKE=		yes
USE_TOOLS+=		cmake

.include "../../wip/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"

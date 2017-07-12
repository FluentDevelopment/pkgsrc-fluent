# $NetBSD$

GITHUB_PROJECT=	botocore
DISTNAME=	${GITHUB_PROJECT}-1.4.65
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GITHUB:=boto/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc@fluentdevelopment.com.au
HOMEPAGE=	https://github.com/boto/
COMMENT=	Low-level interface to a growing number of Amazon Web Services
LICENSE=	apache-2.0

BUILD_DEPENDS+= ${PYPKGPREFIX}-sphinx>=1.6:../../textproc/py-sphinx
DEPENDS+=	${PYPKGPREFIX}-jmespath>=0.9.0:../../fluent/py-jmespath
DEPENDS+=	${PYPKGPREFIX}-dateutil>=2.5.3:../../time/py-dateutil
DEPENDS+=	${PYPKGPREFIX}-docutils>=0.12:../../textproc/py-docutils
DEPENDS+=	${PYPKGPREFIX}-cElementTree>=2.7.13:../../textproc/py-cElementTree

PLIST_SUBST+=	PYVERSSUFFIX=${PYVERSSUFFIX}

DOCDIR=		${PREFIX}/share/doc/botocore

WRKSRC=		${WRKDIR}/${DISTNAME}

post-build:
		cd ${WRKSRC}/docs/ && make SPHINXBUILD=${PREFIX}/bin/sphinx-build${PYVERSSUFFIX} man

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

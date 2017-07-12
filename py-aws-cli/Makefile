# $NetBSD$

GITHUB_PROJECT=	aws-cli
DISTNAME=	1.11.8
PKGNAME=	${PYPKGPREFIX}-${GITHUB_PROJECT}-${DISTNAME}
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GITHUB:=aws/}
EXTRACT_SUFX=	.zip
DIST_SUBDIR=	${GITHUB_PROJECT}
WRKSRC=		${WRKDIR}/${GITHUB_PROJECT}-${DISTNAME}

MAINTAINER=	pkgsrc@fluentdevelopment.com.au
HOMEPAGE=	https://github.com/aws/aws-cli/
COMMENT=	Universal Command Line Interface for Amazon Web Services
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-botocore>=1.4.65:../../fluent/py-botocore
DEPENDS+=	${PYPKGPREFIX}-colorama>=0.3.2:../../comms/py-colorama
DEPENDS+=	${PYPKGPREFIX}-docutils>=0.10:../../textproc/py-docutils
DEPENDS+=	${PYPKGPREFIX}-rsa>=3.4.1:../../security/py-rsa
DEPENDS+=	${PYPKGPREFIX}-s3transfer>=0.1.9:../../fluent/py-s3transfer

PLIST_SUBST+=	PYVERSSUFFIX=${PYVERSSUFFIX}

# url2pkg-marker (please do not remove this line.)
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

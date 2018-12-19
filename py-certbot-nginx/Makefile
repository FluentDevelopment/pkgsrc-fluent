# $NetBSD$

PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
DISTNAME=	certbot-nginx-0.29.1
CATEGORIES=	security python
MASTER_SITES=	${MASTER_SITE_PYPI:=c/certbot-nginx/}

COMMENT=	Nginx plugin for Certbot
MAINTAINER=	pkgsrc@fluentdevelopment.com.au
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-acme>=0.26.0:../../security/py-acme
DEPENDS+=	${PYPKGPREFIX}-certbot>=0.22.0:../../security/py-certbot
DEPENDS+=	${PYPKGPREFIX}-mock-[0-9]*:../../devel/py-mock
DEPENDS+=	${PYPKGPREFIX}-OpenSSL-[0-9]*:../../security/py-OpenSSL
DEPENDS+=	${PYPKGPREFIX}-pyparsing>=1.5.5:../../devel/py-pyparsing
DEPENDS+=	${PYPKGPREFIX}-setuptools-[0-9]*:../../devel/py-setuptools
DEPENDS+=	${PYPKGPREFIX}-ZopeInterface-[0-9]*:../../devel/py-ZopeInterface

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD$

PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
DISTNAME=	certbot-dns-cloudflare-0.29.1
CATEGORIES=	security python
MASTER_SITES=	${MASTER_SITE_PYPI:=c/certbot-dns-cloudflare/}

COMMENT=	Cloudflare DNS Authenticator plugin for Certbot
MAINTAINER=	pkgsrc@fluentdevelopment.com.au
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-acme>=0.21.1:../../security/py-acme
DEPENDS+=	${PYPKGPREFIX}-certbot>=0.21.1:../../security/py-certbot
DEPENDS+=	${PYPKGPREFIX}-cloudflare>=1.5.1:../../fluent/py-cloudflare
DEPENDS+=	${PYPKGPREFIX}-mock-[0-9]*:../../devel/py-mock
DEPENDS+=	${PYPKGPREFIX}-setuptools-[0-9]*:../../devel/py-setuptools
DEPENDS+=	${PYPKGPREFIX}-ZopeInterface-[0-9]*:../../devel/py-ZopeInterface

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

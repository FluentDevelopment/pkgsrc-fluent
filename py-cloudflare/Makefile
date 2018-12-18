# $NetBSD$

PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
DISTNAME=	cloudflare-2.1.0
CATEGORIES=	security python
MASTER_SITES=	${MASTER_SITE_PYPI:=c/cloudflare/}

COMMENT=	Python wrapper for the Cloudflare v4 API
MAINTAINER=	pkgsrc@fluentdevelopment.com.au
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-requests-[0-9]*:../../devel/py-requests
DEPENDS+=	${PYPKGPREFIX}-future-[0-9]*:../../devel/py-future
DEPENDS+=	${PYPKGPREFIX}-yaml-[0-9]*:../../textproc/py-yaml
DEPENDS+=	${PYPKGPREFIX}-jsonlines-[0-9]*:../../fluent/py-jsonlines

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"

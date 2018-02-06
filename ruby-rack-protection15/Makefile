# $NetBSD: Makefile,v 1.7 2015/03/13 17:26:00 taca Exp $

DISTNAME=	rack-protection-1.5.3
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME:S/rack-protection/rack-protection15/}
CATEGORIES=	www

MAINTAINER=	pkgsrc@fluentdevelopment.com.au
HOMEPAGE=	http://github.com/rkh/rack-protection
COMMENT=	Protection for against typical web attacks for Rack application
LICENSE=	mit

# Prefer rack v1.6
DEPENDS+=	${RUBY_PKGPREFIX}-rack16>=0:../../www/ruby-rack16

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

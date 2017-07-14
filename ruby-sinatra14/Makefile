# $NetBSD: Makefile,v 1.20 2017/03/20 16:12:05 taca Exp $

DISTNAME=	sinatra-1.4.8
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME:S/sinatra/sinatra14/}

CATEGORIES=	www

MAINTAINER=	pkgsrc@fluentdevelopment.com.au
HOMEPAGE=	http://www.sinatrarb.com/
COMMENT=	Classy web-development dressed in a DSL
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-rack16>=1.5<2:../../www/ruby-rack16
DEPENDS+=	${RUBY_PKGPREFIX}-rack-protection15>=1.4<2:../../fluent/ruby-rack-protection15
DEPENDS+=	${RUBY_PKGPREFIX}-tilt>=1.3.4<3:../../textproc/ruby-tilt

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD$

DISTNAME=	omniauth-1.6.1
CATEGORIES=	security

MAINTAINER=	timshel@fluentdevelopment.com.au
HOMEPAGE=	http://github.com/intridea/omniauth
COMMENT=	A generalized Rack framework for multiple-provider authentication
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-hashie>=3.4.6<3.6:../../misc/ruby-hashie
DEPENDS+=	${RUBY_PKGPREFIX}-rack>=1.6.2<3:../../www/ruby-rack

RUBY_RDOC_REQD=	3.0

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

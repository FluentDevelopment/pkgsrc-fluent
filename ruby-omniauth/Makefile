# $NetBSD$

DISTNAME=	omniauth-1.8.1
CATEGORIES=	security

MAINTAINER=	pkgsrc@fluentdevelopment.com.au
HOMEPAGE=	http://github.com/intridea/omniauth
COMMENT=	A generalized Rack framework for multiple-provider authentication
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-hashie35>=3.4.6<3.6:../../fluent/ruby-hashie35
DEPENDS+=	${RUBY_PKGPREFIX}-rack16>=1.6.2<3:../../www/ruby-rack16

RUBY_RDOC_REQD=	3.0

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

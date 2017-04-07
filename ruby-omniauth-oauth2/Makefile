# $NetBSD$

DISTNAME=	omniauth-oauth2-1.4.0
CATEGORIES=	security

MAINTAINER=	timshel@fluentdevelopment.com.au
HOMEPAGE=	https://github.com/intridea/omniauth-oauth2
COMMENT=	An abstract OAuth2 strategy for OmniAuth
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-omniauth>=1.2<2:../../wip/ruby-omniauth
DEPENDS+=	${RUBY_PKGPREFIX}-oauth2>=1.0<2:../../wip/ruby-oauth2

RUBY_RDOC_REQD=	3.0

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

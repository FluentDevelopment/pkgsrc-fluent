# $NetBSD$

DISTNAME=	omniauth-google-oauth2-0.5.3
CATEGORIES=	security

MAINTAINER=	pkgsrc@fluentdevelopment.com.au
HOMEPAGE=	https://github.com/zquestz/omniauth-google-oauth2
COMMENT=	A Google OAuth2 strategy for OmniAuth 1.x
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-jwt>=1.5:../../fluent/ruby-jwt
DEPENDS+=	${RUBY_PKGPREFIX}-omniauth>=1.1.1:../../fluent/ruby-omniauth
DEPENDS+=	${RUBY_PKGPREFIX}-omniauth-oauth2>=1.5:../../fluent/ruby-omniauth-oauth2

RUBY_RDOC_REQD=	3.0

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

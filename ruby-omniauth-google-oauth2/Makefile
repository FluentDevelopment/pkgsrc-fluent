# $NetBSD$

DISTNAME=	omniauth-google-oauth2-0.4.1
CATEGORIES=	security

MAINTAINER=	timshel@fluentdevelopment.com.au
HOMEPAGE=	https://github.com/zquestz/omniauth-google-oauth2
COMMENT=	A Google OAuth2 strategy for OmniAuth 1.x
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-jwt>=1.5.2:../../wip/ruby-jwt
DEPENDS+=	${RUBY_PKGPREFIX}-multi_json>=1.3<2:../../textproc/ruby-multi_json
DEPENDS+=	${RUBY_PKGPREFIX}-omniauth>=1.1.1:../../wip/ruby-omniauth
DEPENDS+=	${RUBY_PKGPREFIX}-omniauth-oauth2>=1.3.1:../../wip/ruby-omniauth-oauth2

RUBY_RDOC_REQD=	3.0

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

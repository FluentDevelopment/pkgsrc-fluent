# $NetBSD$

DISTNAME=	oauth2-1.3.1
CATEGORIES=	security

MAINTAINER=	pkgsrc@fluentdevelopment.com.au
HOMEPAGE=	http://github.com/intridea/oauth2
COMMENT=	A Ruby wrapper for the OAuth 2.0 protocol built with a similar style to the original OAuth spec
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-faraday>=0.8<1.12:../../www/ruby-faraday
DEPENDS+=	${RUBY_PKGPREFIX}-jwt>=1.0<2:../../fluent/ruby-jwt
DEPENDS+=	${RUBY_PKGPREFIX}-multi_json>=1.3<2:../../textproc/ruby-multi_json
DEPENDS+=	${RUBY_PKGPREFIX}-multi_xml>=0.5<1:../../fluent/ruby-multi_xml
DEPENDS+=	${RUBY_PKGPREFIX}-rack>=1.2<3:../../www/ruby-rack

RUBY_RDOC_REQD=	3.0

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

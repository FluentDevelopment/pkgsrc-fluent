# $NetBSD$

DISTNAME=	omnigollum-0.1.5
CATEGORIES=	security

MAINTAINER=	pkgsrc@fluentdevelopment.com.au
HOMEPAGE=	https://github.com/arr2036/omnigollum
COMMENT=	Adds support for OmniAuth in Gollum
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-gollum>=0:../../fluent/ruby-gollum
DEPENDS+=	${RUBY_PKGPREFIX}-mustache099>=0.99.5:../../fluent/ruby-mustache099
DEPENDS+=	${RUBY_PKGPREFIX}-omniauth>=0:../../fluent/ruby-omniauth

RUBY_RDOC_REQD=	3.0

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

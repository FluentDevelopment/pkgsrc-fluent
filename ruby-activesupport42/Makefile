# $NetBSD$

DISTNAME=	activesupport-${RUBY_RAILS_VERSION}
CATEGORIES=	devel

MAINTAINER=	pkgsrc@fluentdevelopment.com.au
HOMEPAGE=	http://www.rubyonrails.org/
COMMENT=	Toolkit of support libraries (part of Rails 4.2)
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-i18n>=0.6<1:../../devel/ruby-i18n
DEPENDS+=	${RUBY_PKGPREFIX}-multi_json>=1.0<2:../../textproc/ruby-multi_json

RUBY_RAILS_SUPPORTED=	42
RUBY_RAILS_STRICT_DEP=	yes
RUBY_VERSION_SUPPORTED=	193 200 21 22

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

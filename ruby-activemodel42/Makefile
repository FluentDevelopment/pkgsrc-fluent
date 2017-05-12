# $NetBSD$

DISTNAME=	activemodel-${RUBY_RAILS_VERSION}
CATEGORIES=	devel

MAINTAINER=	pkgsrc@fluentdevelopment.com.au
HOMEPAGE=	http://www.rubyonrails.org/
COMMENT=	Toolkit for building modeling frameworks (part of Rails 4.2)
LICENSE=	mit

DEPENDS+=	${RUBY_ACTIVESUPPORT_DEPENDS}
DEPENDS+=	${RUBY_PKGPREFIX}-builder>=3.0.0<3.1:../../textproc/ruby-builder

RUBY_RAILS_SUPPORTED=	42
RUBY_RAILS_STRICT_DEP=	yes
RUBY_VERSION_SUPPORTED=	193 200 21 22

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

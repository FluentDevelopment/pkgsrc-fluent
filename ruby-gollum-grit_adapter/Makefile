# $NetBSD$

DISTNAME=	gollum-grit_adapter-2.0.0
CATEGORIES=	www

MAINTAINER=	pkgsrc@fluentdevelopment.com.au
HOMEPAGE=	https://github.com/gollum/grit_adapter
COMMENT=	Adapter for gollum to use Grit at the backend
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-gitlab-grit>=2.8.1<3:../../fluent/ruby-gitlab-grit

RUBY_RDOC_REQD=	3.0

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

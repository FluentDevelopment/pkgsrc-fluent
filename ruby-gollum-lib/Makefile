# $NetBSD$

DISTNAME=	gollum-lib-4.2.7
CATEGORIES=	www

MAINTAINER=	pkgsrc@fluentdevelopment.com.au
HOMEPAGE=	https://github.com/gollum/gollum/wiki
COMMENT=	A simple, Git-powered wiki with a sweet API and local frontend
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-gemojione>=3.2<4:../../fluent/ruby-gemojione
DEPENDS+=	${RUBY_PKGPREFIX}-github-markup>=1.6<2:../../fluent/ruby-github-markup
DEPENDS+=	${RUBY_PKGPREFIX}-gollum-grit_adapter1>=1<2:../../fluent/ruby-gollum-grit_adapter1
DEPENDS+=	${RUBY_PKGPREFIX}-nokogiri>=1.6.1<2.0:../../textproc/ruby-nokogiri
DEPENDS+=	${RUBY_PKGPREFIX}-rouge>=2.1<3:../../fluent/ruby-rouge
DEPENDS+=	${RUBY_PKGPREFIX}-sanitize2>=2.1<3:../../fluent/ruby-sanitize2
DEPENDS+=	${RUBY_PKGPREFIX}-stringex>=2.6<3:../../fluent/ruby-stringex

RUBY_RDOC_REQD=	3.0

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD$

DISTNAME=	gollum-4.1.2
CATEGORIES=	www

MAINTAINER=	pkgsrc@fluentdevelopment.com.au
HOMEPAGE=	https://github.com/gollum/gollum/wiki
COMMENT=	A simple, Git-powered wiki with a sweet API and local frontend
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-gemojione>=3.2<3.3:../../fluent/ruby-gemojione
DEPENDS+=	${RUBY_PKGPREFIX}-gollum-lib>=4.2.7<5:../../fluent/ruby-gollum-lib
DEPENDS+=	${RUBY_PKGPREFIX}-kramdown19>=1.9<1.10:../../fluent/ruby-kramdown19
DEPENDS+=	${RUBY_PKGPREFIX}-mustache099>=0.99.5<1:../../fluent/ruby-mustache099
DEPENDS+=	${RUBY_PKGPREFIX}-sinatra14>=1.4.4<1.5:../../fluent/ruby-sinatra14
DEPENDS+=	${RUBY_PKGPREFIX}-useragent>=0.16.2<0.17:../../fluent/ruby-useragent

RUBY_RDOC_REQD=	3.0

OVERRIDE_GEMSPEC+= :executables gollum=${GOLLUMBIN} \
		:files bin/gollum=bin/${GOLLUMBIN}

GOLLUMBIN?=	gollum${RUBY_SUFFIX}

pre-configure:
	cd ${WRKSRC}/bin && ${MV} gollum ${GOLLUMBIN}

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

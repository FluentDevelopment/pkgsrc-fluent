# $NetBSD$

DISTNAME=	mustache-0.99.8
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME:S/mustache/mustache099/}
CATEGORIES=	devel

MAINTAINER=	pkgsrc@fluentdevelopment.com.au
HOMEPAGE=	https://mustache.github.io/
COMMENT=	Logic-less Ruby templates
LICENSE=	mit

INSTALLATION_DIRS+=	${PKGMANDIR}/man1/ ${PKGMANDIR}/man5/

OVERRIDE_GEMSPEC=       :executables mustache=mustache099 \
                        :files bin/mustache=bin/mustache099
RUBYGEM_OPTIONS+=       --format-executable

pre-configure:
	${MV} ${WRKSRC}/bin/mustache ${WRKSRC}/bin/mustache099

post-install:
.for mantype in 1 5
	${INSTALL_MAN} ${WRKSRC}/man/mustache.${mantype} \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man${mantype}/mustache099${RUBY_SUFFIX}.${mantype}
.endfor

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

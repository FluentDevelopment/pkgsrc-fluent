# $NetBSD$

DISTNAME=	mustache-1.0.5
CATEGORIES=	devel

MAINTAINER=	nils@NetBSD.org
HOMEPAGE=	https://mustache.github.io/
COMMENT=	Logic-less Ruby templates
LICENSE=	mit

INSTALLATION_DIRS+=	${PKGMANDIR}/man1/ ${PKGMANDIR}/man5/

RUBYGEM_OPTIONS=	--format-executable

post-install:
.for mantype in 1 5
	${INSTALL_MAN} ${WRKSRC}/man/mustache.${mantype} \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man${mantype}/mustache${RUBY_SUFFIX}.${mantype}
.endfor

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

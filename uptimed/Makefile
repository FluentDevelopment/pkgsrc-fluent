# $NetBSD$
#

DISTNAME=	uptimed-0.4.0
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_GITHUB:=rpodgorny/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=		pkgsrc@fluentdevelopment.com.au
HOMEPAGE=		http://podgorny.cz/uptimed/
COMMENT=		Keeps track of current and past system uptimes

USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}

USE_TOOLS+=		aclocal
USE_TOOLS+=		autoconf
USE_TOOLS+=		autoheader
USE_TOOLS+=		automake

EGDIR=			${PREFIX}/share/examples/${PKGBASE}
INSTALLATION_DIRS=	bin sbin lib ${PKGMANDIR}/man1 ${PKGMANDIR}/man8
INSTALLATION_DIRS+=	share/examples/rc.d ${EGDIR}

OWN_DIRS=		${VARABSE}/spool/uptimed

RCD_SCRIPTS=		uptimed
CONF_FILES=		${EGDIR}/uptimed.conf-dist ${PKG_SYSCONFDIR}/uptimed.conf

pre-configure:
	set -e; cd ${WRKSRC}; \
	aclocal; autoheader; libtoolize; automake -a --foreign -i; autoconf

do-install:
	set -e; cd ${WRKSRC}/libuptimed; ${MAKE_PROGRAM} install DESTDIR=${DESTDIR}
	set -e; cd ${WRKSRC}/src; ${MAKE_PROGRAM} install DESTDIR=${DESTDIR}
	set -e; cd ${WRKSRC}/man; ${MAKE_PROGRAM} install DESTDIR=${DESTDIR}
	${INSTALL_DATA} ${WRKSRC}/etc/uptimed.conf-dist ${DESTDIR}${EGDIR}

.include "../../mk/bsd.pkg.mk"

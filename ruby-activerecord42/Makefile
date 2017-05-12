# $NetBSD$

DISTNAME=	activerecord-${RUBY_RAILS_VERSION}
CATEGORIES=	databases

MAINTAINER=	pkgsrc@fluentdevelopment.com.au
HOMEPAGE=	http://www.rubyonrails.org/
COMMENT=	Object-relational mapper framework (part of Rails 4.2)
LICENSE=	mit

# Comment out dependency in gemspec but already depends indirectly one.
#DEPENDS+=	${RUBY_ACTIVESUPPORT_DEPENDS}
DEPENDS+=	${RUBY_ACTIVEMODEL_DEPENDS}
DEPENDS+=	${RUBY_PKGPREFIX}-arel30>=3.0.2<3.1:../../databases/ruby-arel30
DEPENDS+=	${RUBY_PKGPREFIX}-tzinfo>=1.2.2<1.3:../../time/ruby-tzinfo

RUBY_RAILS_SUPPORTED=	42
RUBY_RAILS_STRICT_DEP=	yes
RUBY_VERSION_SUPPORTED=	193 200 21 22

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD$

.if !defined(_RUBY_RAILS4_MK)
_RUBY_RAILS4_MK=	# defined

#
# current Ruby on Rails versions.
#
RUBY_RAILS42_VERSION?=	4.2.7.1

RUBY_RAILS_SUPPORTED?=	# defined
RUBY_RAILS_DEFAULT?=	42

.if empty(RUBY_RAILS)
_RUBY_INSTALLED_RAILS!= \
	if ${PKG_INFO} -qe "${RUBY_PKGPREFIX}-rack>=1.6" || \
		${PKG_INFO} -qe "${RUBY_PKGPREFIX}-activesupport>=4.2"; then \
		${ECHO} 42; \
	elif ${PKG_INFO} -qe "${RUBY_PKGPREFIX}-rack>=1.4" || \
		${PKG_INFO} -qe "${RUBY_PKGPREFIX}-activesupport>=3.2"; then \
		${ECHO} 32; \
	else \
		${ECHO} "none"; \
	fi
. if ${_RUBY_INSTALLED_RAILS} != "none"
RUBY_RAILS:=	${_RUBY_INSTALLED_RAILS}
. else
RUBY_RAILS:=	${RUBY_RAILS_DEFAULT}
. endif
.endif

.if defined(RUBY_RAILS${RUBY_RAILS}_VERSION)
RUBY_RAILS_VERSION:=	${RUBY_RAILS${RUBY_RAILS}_VERSION}
.else
RUBY_RAILS_VERSION:=	${RUBY_RAILS42_VERSION}
.endif

RUBY_RAILS42_ACTIVESUPPORT=	../../fluent/ruby-activesupport42
RUBY_RAILS42_ACTIVEMODEL=	../../fluent/ruby-activemodel42
RUBY_RAILS42_ACTIONPACK=	../../fluent/ruby-actionpack42
RUBY_RAILS42_ACTIVERECORD=	../../fluent/ruby-activerecord42
RUBY_RAILS42_ACTIONMAILER=	../../fluent/ruby-actionmailer42
RUBY_RAILS42_RAILTIES=		../../fluent/ruby-railties42
RUBY_RAILS42_RAILS=		../../fluent/ruby-rails42

.endif

.include "../../lang/ruby/rails.mk"

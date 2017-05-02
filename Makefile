# $NetBSD$

COMMENT=	Fluent Development pkgsrc packages

#SUBDIR+=	.git # to silence pkglint
SUBDIR+=	mail
SUBDIR+=	nginx
SUBDIR+=	openssl
SUBDIR+=	ruby
SUBDIR+=	ruby-actionmailer42
SUBDIR+=	ruby-actionpack42
SUBDIR+=	ruby-activemodel42
SUBDIR+=	ruby-activerecord42
SUBDIR+=	ruby-activesupport42
SUBDIR+=	ruby-arel6
SUBDIR+=	ruby-chardet
SUBDIR+=	ruby-charlock_holmes
SUBDIR+=	ruby-crass
SUBDIR+=	ruby-gemojione
SUBDIR+=	ruby-gemojione2
SUBDIR+=	ruby-github-markdown
SUBDIR+=	ruby-github-markup
SUBDIR+=	ruby-gitlab-grit
SUBDIR+=	ruby-god
SUBDIR+=	ruby-gollum
SUBDIR+=	ruby-gollum-grit_adapter
SUBDIR+=	ruby-gollum-grit_adapter1
SUBDIR+=	ruby-gollum-lib
SUBDIR+=	ruby-jwt
SUBDIR+=	ruby-kramdown19
SUBDIR+=	ruby-multi_xml
SUBDIR+=	ruby-mustache
SUBDIR+=	ruby-mustache099
SUBDIR+=	ruby-nokogiri16
SUBDIR+=	ruby-nokogumbo
SUBDIR+=	ruby-oauth2
SUBDIR+=	ruby-omniauth
SUBDIR+=	ruby-omniauth-google-oauth2
SUBDIR+=	ruby-omniauth-oauth2
SUBDIR+=	ruby-omnigollum
SUBDIR+=	ruby-rails-deprecated_sanitizer
SUBDIR+=	ruby-rails42
SUBDIR+=	ruby-railties42
SUBDIR+=	ruby-rake-compiler
SUBDIR+=	ruby-rouge
SUBDIR+=	ruby-sanitize
SUBDIR+=	ruby-sanitize2
SUBDIR+=	ruby-stringex
SUBDIR+=	ruby-useragent

.include "../mk/misc/category.mk"

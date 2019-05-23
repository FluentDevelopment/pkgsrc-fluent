# $NetBSD$

COMMENT=	Fluent Development pkgsrc packages

#SUBDIR+=	.git # to silence pkglint
SUBDIR+=	greyd
SUBDIR+=	nginx
SUBDIR+=	openssl
SUBDIR+=	py-certbot-dns-cloudflare
SUBDIR+=	py-certbot-nginx
SUBDIR+=	py-cloudflare
SUBDIR+=	py-jsonlines
SUBDIR+=	py-s3transfer
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
SUBDIR+=	ruby-hashie35
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
SUBDIR+=	ruby-rack-protection15
SUBDIR+=	ruby-rake-compiler
SUBDIR+=	ruby-rouge
SUBDIR+=	ruby-sanitize
SUBDIR+=	ruby-sanitize2
SUBDIR+=	ruby-sinatra14
SUBDIR+=	ruby-stringex
SUBDIR+=	ruby-useragent
SUBDIR+=	uptimed

.include "../mk/misc/category.mk"

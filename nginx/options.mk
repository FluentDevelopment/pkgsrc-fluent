# $NetBSD: options.mk,v 1.51 2019/08/15 08:06:29 adam Exp $

PKG_OPTIONS_VAR=		PKG_OPTIONS.nginx
PKG_SUPPORTED_OPTIONS=		dav flv gtools inet6 luajit mail-proxy memcache naxsi \
				pcre push realip ssl sub uwsgi image-filter \
				debug status nginx-autodetect-cflags echo \
				set-misc headers-more array-var encrypted-session \
				form-input perl gzip http2 auth-request secure-link rtmp \
				spdy brotli
PKG_OPTIONS_LEGACY_OPTS+=	v2:http2

PKG_SUGGESTED_OPTIONS=	inet6 pcre ssl

PLIST_VARS+=		naxsi perl uwsgi

.include "../../mk/bsd.options.mk"

# documentation says naxsi must be the first module
.if !empty(PKG_OPTIONS:Mnaxsi)
PLIST.naxsi=		yes
CONFIGURE_ARGS+=	--add-module=../${NAXSI_DISTNAME}/naxsi_src
.endif
.if !empty(PKG_OPTIONS:Mnaxsi) || make(makesum)
NAXSI_VERSION=		0.56
NAXSI_DISTNAME=		naxsi-${NAXSI_VERSION}
NAXSI_DISTFILE=		${NAXSI_DISTNAME}.tar.gz
SITES.${NAXSI_DISTFILE}=-https://github.com/nbs-system/naxsi/archive/${NAXSI_VERSION}.tar.gz
DISTFILES+=		${NAXSI_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Mdebug)
CONFIGURE_ARGS+=	--with-debug
.endif

.if !empty(PKG_OPTIONS:Mssl)
.include "../../security/openssl/buildlink3.mk"
CONFIGURE_ARGS+=	--with-mail_ssl_module
CONFIGURE_ARGS+=	--with-http_ssl_module
.endif

.if !empty(PKG_OPTIONS:Mpcre)
.include "../../devel/pcre/buildlink3.mk"
CONFIGURE_ARGS+=	--with-pcre-jit
.else
CONFIGURE_ARGS+=	--without-pcre
CONFIGURE_ARGS+=	--without-http_rewrite_module
.endif

.if !empty(PKG_OPTIONS:Mdav)
CONFIGURE_ARGS+=	--with-http_dav_module
.endif

.if !empty(PKG_OPTIONS:Mflv)
CONFIGURE_ARGS+=	--with-http_flv_module
.endif

.if !empty(PKG_OPTIONS:Mhttp2)
CONFIGURE_ARGS+=	--with-http_v2_module
.endif

.if !empty(PKG_OPTIONS:Msub)
CONFIGURE_ARGS+=	--with-http_sub_module
.endif

.if !empty(PKG_OPTIONS:Mgtools)
CONFIGURE_ARGS+=	--with-google_perftools_module
.include "../../devel/gperftools/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mmail-proxy)
CONFIGURE_ARGS+=	--with-mail
.endif

.if empty(PKG_OPTIONS:Mmemcache)
CONFIGURE_ARGS+=	--without-http_memcached_module
.endif

.if !empty(PKG_OPTIONS:Mrealip)
CONFIGURE_ARGS+=	--with-http_realip_module
.endif

# NDK must be added once and before 3rd party modules needing it
.for _ngx_mod in luajit set-misc array-var form-input encrypted-session
.  if !defined(NEED_NDK) && !empty(PKG_OPTIONS:M${_ngx_mod}:O)
CONFIGURE_ARGS+=	--add-module=../${NDK_DISTNAME}
NEED_NDK=		yes
.  endif
.endfor
.if defined(NEED_NDK) || make(makesum)
NDK_VERSION=		0.3.1
NDK_DISTNAME=		ngx_devel_kit-${NDK_VERSION}
NDK_DISTFILE=		${NDK_DISTNAME}.tar.gz
SITES.${NDK_DISTFILE}=	-https://github.com/simpl/ngx_devel_kit/archive/v${NDK_VERSION}.tar.gz
DISTFILES+=		${NDK_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Mluajit)
.include "../../lang/LuaJIT2/buildlink3.mk"
CONFIGURE_ENV+=		LUAJIT_LIB=${PREFIX}/lib
CONFIGURE_ENV+=		LUAJIT_INC=${PREFIX}/include/luajit-2.0
CONFIGURE_ARGS+=	--add-module=../${LUA_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mluajit) || make(makesum)
LUA_VERSION=		0.10.15
LUA_DISTNAME=		lua-nginx-module-${LUA_VERSION}
LUA_DISTFILE=		${LUA_DISTNAME}.tar.gz
SITES.${LUA_DISTFILE}=	-https://github.com/openresty/lua-nginx-module/archive/v${LUA_VERSION}.tar.gz
DISTFILES+=		${LUA_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Mecho)
CONFIGURE_ARGS+=	--add-module=../${ECHOMOD_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mecho) || make(makesum)
ECHOMOD_VERSION=	0.61
ECHOMOD_DISTNAME=	echo-nginx-module-${ECHOMOD_VERSION}
ECHOMOD_DISTFILE=	${ECHOMOD_DISTNAME}.tar.gz
SITES.${ECHOMOD_DISTFILE}=	-https://github.com/openresty/echo-nginx-module/archive/v${ECHOMOD_VERSION}.tar.gz
DISTFILES+=		${ECHOMOD_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Mset-misc)
CONFIGURE_ARGS+=	--add-module=../${SETMISC_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mset-misc) || make(makesum)
SETMISC_VERSION=	0.32
SETMISC_DISTNAME=	set-misc-nginx-module-${SETMISC_VERSION}
SETMISC_DISTFILE=	${SETMISC_DISTNAME}.tar.gz
SITES.${SETMISC_DISTFILE}=	-https://github.com/openresty/set-misc-nginx-module/archive/v${SETMISC_VERSION}.tar.gz
DISTFILES+=		${SETMISC_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Marray-var)
CONFIGURE_ARGS+=	--add-module=../${ARRAYVAR_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Marray-var) || make(makesum)
ARRAYVAR_VERSION=	0.05
ARRAYVAR_DISTNAME=	array-var-nginx-module-${ARRAYVAR_VERSION}
ARRAYVAR_DISTFILE=	${ARRAYVAR_DISTNAME}.tar.gz
SITES.${ARRAYVAR_DISTFILE}=	-https://github.com/openresty/array-var-nginx-module/archive/v${ARRAYVAR_VERSION}.tar.gz
DISTFILES+=		${ARRAYVAR_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Mencrypted-session)
CONFIGURE_ARGS+=	--add-module=../${ENCSESS_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mencrypted-session) || make(makesum)
ENCSESS_VERSION=	0.08
ENCSESS_DISTNAME=	encrypted-session-nginx-module-${ENCSESS_VERSION}
ENCSESS_DISTFILE=	${ENCSESS_DISTNAME}.tar.gz
SITES.${ENCSESS_DISTFILE}=	-https://github.com/openresty/encrypted-session-nginx-module/archive/v${ENCSESS_VERSION}.tar.gz
DISTFILES+=		${ENCSESS_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Mform-input)
CONFIGURE_ARGS+=	--add-module=../${FORMINPUT_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mform-input) || make(makesum)
FORMINPUT_VERSION=	0.12
FORMINPUT_DISTNAME=	form-input-nginx-module-${FORMINPUT_VERSION}
FORMINPUT_DISTFILE=	${FORMINPUT_DISTNAME}.tar.gz
SITES.${FORMINPUT_DISTFILE}=	-https://github.com/calio/form-input-nginx-module/archive/v${FORMINPUT_VERSION}.tar.gz
DISTFILES+=		${FORMINPUT_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Mheaders-more)
CONFIGURE_ARGS+=	--add-module=../${HEADMORE_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mheaders-more) || make(makesum)
HEADMORE_VERSION=	0.33
HEADMORE_DISTNAME=	headers-more-nginx-module-${HEADMORE_VERSION}
HEADMORE_DISTFILE=	${HEADMORE_DISTNAME}.tar.gz
SITES.${HEADMORE_DISTFILE}=	-https://github.com/openresty/headers-more-nginx-module/archive/v${HEADMORE_VERSION}.tar.gz
DISTFILES+=		${HEADMORE_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Muwsgi)
EGFILES+=		uwsgi_params
PLIST.uwsgi=		yes
CONFIGURE_ARGS+=	--http-uwsgi-temp-path=${NGINX_DATADIR}/uwsgi_temp
.else
CONFIGURE_ARGS+=	--without-http_uwsgi_module
.endif

.if !empty(PKG_OPTIONS:Mpush)
CONFIGURE_ARGS+=	--add-module=../nchan-${PUSH_VERSION}
.endif
.if !empty(PKG_OPTIONS:Mpush) || make(makesum)
PUSH_VERSION=		1.2.6
PUSH_DISTNAME=		nginx_http_push_module-${PUSH_VERSION}
PUSH_DISTFILE=		${PUSH_DISTNAME}.tar.gz
SITES.${PUSH_DISTFILE}=	-https://github.com/slact/nchan/archive/v${PUSH_VERSION}.tar.gz
DISTFILES+=		${PUSH_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Mimage-filter)
.include "../../graphics/gd/buildlink3.mk"
CONFIGURE_ARGS+=	--with-http_image_filter_module
.endif

.if !empty(PKG_OPTIONS:Mstatus)
CONFIGURE_ARGS+=	--with-http_stub_status_module
.endif

.if !empty(PKG_OPTIONS:Mperl)
CONFIGURE_ARGS+=	--with-http_perl_module
CONFIGURE_ARGS+=	--with-perl=${PERL5:Q}
INSTALLATION_DIRS+=	${PERL5_INSTALLVENDORARCH}/auto/nginx
PLIST.perl=		yes
.include "../../lang/perl5/dirs.mk"
.include "../../lang/perl5/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mgzip)
CONFIGURE_ARGS+=	--with-http_gzip_static_module
.endif

.if !empty(PKG_OPTIONS:Mauth-request)
CONFIGURE_ARGS+=	--with-http_auth_request_module
.endif

.if !empty(PKG_OPTIONS:Msecure-link)
CONFIGURE_ARGS+=	--with-http_secure_link_module
.endif

.if !empty(PKG_OPTIONS:Mrtmp)
CONFIGURE_ARGS+=	--add-module=../${RTMP_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mrtmp) || make(makesum)
RTMP_VERSION=		1.2.1
RTMP_DISTNAME=		nginx-rtmp-module-${RTMP_VERSION}
RTMP_DISTFILE=		${RTMP_DISTNAME}.tar.gz
SITES.${RTMP_DISTFILE}=	-https://github.com/arut/nginx-rtmp-module/archive/v${RTMP_VERSION}.tar.gz
DISTFILES+=		${RTMP_DISTFILE}
.endif

.if !empty(PKG_OPTIONS:Mspdy)
CONFIGURE_ARGS+=	--with-http_spdy_module
.endif

.if !empty(PKG_OPTIONS:Mspdy) || make(makesum)
V2SPDY_PATCH=		nginx__1.13.0_http2_spdy.patch
PATCHFILES+=		${V2SPDY_PATCH}
SITES.${V2SPDY_PATCH}=	https://github.com/cloudflare/sslconfig/raw/master/patches/
PATCH_DIST_STRIP.${V2SPDY_PATCH}= -p1
.endif

.if !empty(PKG_OPTIONS:Mbrotli)
CONFIGURE_ARGS+=	--add-module=../${NGX_BROTLI_DISTNAME}
.endif
.if !empty(PKG_OPTIONS:Mbrotli) || make(makesum)
NGX_BROTLI_VERSION=		master
NGX_BROTLI_DISTNAME=	ngx_brotli-${NGX_BROTLI_VERSION}
NGX_BROTLI_DISTFILE=	${NGX_BROTLI_DISTNAME}.tar.gz
SITES.${NGX_BROTLI_DISTFILE}=	-https://github.com/FluentDevelopment/ngx_brotli/archive/${NGX_BROTLI_VERSION}.tar.gz
#BROTLI_VERSION=		0.6.0
BROTLI_VERSION=		222564a95d9ab58865a096b8d9f7324ea5f2e03e
#BROTLI_DISTNAME=	Brotli-${BROTLI_VERSION}
BROTLI_DISTNAME=	brotli-${BROTLI_VERSION}
BROTLI_DISTFILE=	${BROTLI_DISTNAME}.tar.gz
#SITES.${BROTLI_DISTFILE}=	-https://github.com/google/brotli/releases/download/v${BROTLI_VERSION}/${BROTLI_DISTFILE}
SITES.${BROTLI_DISTFILE}=	-https://github.com/google/brotli/archive/${BROTLI_VERSION}.tar.gz
DISTFILES+=		${NGX_BROTLI_DISTFILE} ${BROTLI_DISTFILE}
pre-configure:
	cd ${WRKDIR}/${NGX_BROTLI_DISTNAME}/deps && rm -rf brotli && ln -s ../../${BROTLI_DISTNAME} brotli
.endif

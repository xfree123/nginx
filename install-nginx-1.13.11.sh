#!/bin/bash
# Install nginx 1.13.11 with openssl-1.1.1-pre4, zlib 1.12.2, basic options
opensslversion=openssl-1.1.1-pre4
zlibversion=zlib-1.2.11
nginx_VERSION=1.13.11
cd /tmp/nginx/nginx-${nginx_VERSION}
#Patch for module nginx-limit-upstream-master
patch -p1 < ../nginx-limit-upstream-master/nginx-1.12.1.patch
./configure --prefix=/usr/share/nginx \
--sbin-path=/usr/sbin/nginx \
--group=nginx --user=nginx \
--pid-path=/var/run/nginx.pid \
--conf-path=/etc/nginx/nginx.conf \
--http-log-path=/var/log/nginx/access.log \
--error-log-path=/var/log/nginx/error.log \
--with-http_v2_module \
--with-http_ssl_module \
--with-http_stub_status_module \
--with-http_sub_module \
--with-http_addition_module \
--with-http_geoip_module \
--with-http_perl_module \
--with-mail \
--with-mail_ssl_module \
--with-http_gunzip_module \
--with-http_gzip_static_module \
--with-file-aio \
--with-pcre=../pcre-8.41 \
--with-pcre-jit \
--with-google_perftools_module \
--with-debug \
--with-openssl=../${opensslversion} \
--with-zlib=../${zlibversion} \
--with-openssl-opt="enable-tlsext" \
--with-http_realip_module \
--with-http_stub_status_module \
--without-http_fastcgi_module \
--without-http_uwsgi_module \
--without-http_scgi_module \
--without-mail_pop3_module \
--without-mail_imap_module \
--without-mail_smtp_module \
--with-stream=dynamic \
--with-stream_realip_module \
--add-module=../ngx_devel_kit-master \
--add-module=../echo-nginx-module-master \
--add-module=../set-misc-nginx-module-master \
--add-module=../srcache-nginx-module-master \
--add-module=../ngx_http_concat \
--add-module=../ngx_http_substitutions_filter_module-master \
--add-module=../ngx_cache_purge-master \
--add-module=../headers-more-nginx-module-master \
--add-dynamic-module=../redis2-nginx-module-master \
--add-dynamic-module=../ngx_http_redis-0.3.8 \
--add-dynamic-module=../memc-nginx-module-master \
--add-dynamic-module=../nginx_module_vts \
--add-dynamic-module=../ngx_http_dyups_module-master \
--add-dynamic-module=../nginx-limit-upstream-master \
--with-cc=/opt/rh/devtoolset-2/root/usr/bin/gcc
make
make install

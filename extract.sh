#!/bin/bash
opensslversion=openssl-1.0.2l
zlibversion=zlib-1.2.11
Nginx_VERSION=1.12.2
moduledir=../
echo "=========================This will extract all file=================================="
cd /usr/local/src/nginx/
unzip -oq echo-nginx-module.zip
rm -rf echo-nginx-module.zip
unzip -oq ngx_http_substitutions_filter_module.zip
rm -rf ngx_http_substitutions_filter_module.zip
unzip -oq ngx_cache_purge.zip
rm -rf ngx_cache_purge.zip
unzip -oq headers-more-nginx-module.zip
rm -f headers-more-nginx-module.zip
tar -xzvf ${opensslversion}.tar.gz
rm -rf ${opensslversion}.tar.gz
tar -xzvf ${zlibversion}.tar.gz
rm -rf ${zlibversion}.tar.gz
unzip -oq pcre-8.41.zip
rm -rf pcre-8.41.zip
tar -xzvf ngx_http_redis-0.3.8.tar.gz
rm -rf ngx_http_redis-0.3.8.tar.gz
unzip -oq redis2-nginx-module.zip
rm -rf redis2-nginx-module.zip
unzip -oq set-misc-nginx-module.zip
rm -rf set-misc-nginx-module.zip
unzip -oq ngx_devel_kit.zip
rm -rf ngx_devel_kit.zip
tar -xzvf ngx_http_concat.tar.gz
rm -rf ngx_http_concat.tar.gz
unzip -oq srcache-nginx-module.zip
rm -rf srcache-nginx-module.zip
unzip -oq memc-nginx-module.zip
rm -rf memc-nginx-module.zip
unzip -oq libatomic_ops.zip
rm -rf libatomic_ops.zip
tar -xzvf nginx_module_vts.tar.gz
rm -rf nginx_module_vts.tar.gz
unzip ngx_http_dyups_module-master.zip
rm -rf ngx_http_dyups_module-master.zip
tar -xzvf nginx-${Nginx_VERSION}.tar.gz
rm -f nginx-${Nginx_VERSION}.tar.gz
unzip -oq initscript-nginx.zip
rm -f initscript-nginx.zip

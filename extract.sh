#!/bin/bash

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
tar -xzvf openssl-1.1.1-pre4.tar.gz
tar -xzvf openssl-1.0.2l.tar.gz
rm -rf openssl*.tar.gz
tar -xzvf zlib*.tar.gz
rm -rf zlib*.tar.gz
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
tar -xzvf nginx-1.12.2.tar.gz
tar -xzvf nginx-1.13.11.tar.gz
rm -f nginx-1.*.tar.gz
unzip -oq initscript-nginx.zip
rm -f initscript-nginx.zip
unzip -oq nginx-limit-upstream-master.zip
rm -f nginx-limit-upstream-master.zip


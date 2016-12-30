# nginx-cas docker

build a docker image with nginx with
[cas-nginx_http_auth_module](https://github.com/detailyang/cas-nginx_http_auth_module)
compiled in.

I'm *juust* getting started on this so the Dockerfile is super ugly
and inefficient and everything is not at all documented yet.

But, currently, I have it compiled:

```
nginx version: nginx/1.10.0 (Ubuntu)
built with OpenSSL 1.0.2g  1 Mar 2016
TLS SNI support enabled
configure arguments: --with-cc-opt='-g -O2 -fPIE -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2' --with-ld-opt='-Wl,-Bsymbolic-functions -fPIE -pie -Wl,-z,relro -Wl,-z,now' --prefix=/usr/share/nginx --conf-path=/etc/nginx/nginx.conf --http-log-path=/var/log/nginx/access.log --error-log-path=/var/log/nginx/error.log --lock-path=/var/lock/nginx.lock --pid-path=/run/nginx.pid --http-client-body-temp-path=/var/lib/nginx/body --http-fastcgi-temp-path=/var/lib/nginx/fastcgi --http-proxy-temp-path=/var/lib/nginx/proxy --http-scgi-temp-path=/var/lib/nginx/scgi --http-uwsgi-temp-path=/var/lib/nginx/uwsgi --with-debug --with-pcre-jit --with-ipv6 --with-http_ssl_module --with-http_stub_status_module --with-http_realip_module --with-http_auth_request_module --with-http_addition_module --with-http_dav_module --with-http_geoip_module --with-http_gunzip_module --with-http_gzip_static_module --with-http_image_filter_module --with-http_v2_module --with-http_sub_module --with-http_xslt_module --with-stream --with-stream_ssl_module --with-mail --with-mail_ssl_module --with-threads --add-module=/opt/rebuildnginx/nginx-1.10.0/debian/modules/nginx-auth-pam --add-module=/opt/rebuildnginx/nginx-1.10.0/debian/modules/nginx-dav-ext-module --add-module=/opt/rebuildnginx/nginx-1.10.0/debian/modules/nginx-echo --add-module=/opt/rebuildnginx/nginx-1.10.0/debian/modules/nginx-upstream-fair --add-module=/opt/rebuildnginx/nginx-1.10.0/debian/modules/ngx_http_substitutions_filter_module --add-module=/opt/cas/cas-nginx_http_auth_module-master
```

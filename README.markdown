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
configure arguments: ... --add-module=/opt/cas/cas-nginx_http_auth_module-master
```

FROM ubuntu:xenial

RUN apt-get update && apt-get install -qy \
    dpkg-dev unzip wget

RUN sed -i -- 's/#deb-src/deb-src/g' /etc/apt/sources.list \
    && sed -i -- 's/# deb-src/deb-src/g' /etc/apt/sources.list \
    && apt-get build-dep nginx -qy

RUN mkdir /opt/cas
WORKDIR /opt/cas
RUN wget https://github.com/detailyang/cas-nginx_http_auth_module/archive/master.zip
RUN unzip master.zip
RUN ls -al

RUN mkdir /opt/rebuildnginx
WORKDIR /opt/rebuildnginx

RUN apt-get source nginx
COPY rules /opt/rebuildnginx/
RUN mv rules nginx-*/debian/rules
RUN more nginx-*/debian/rules
RUN cd nginx-* && dpkg-buildpackage -b
RUN apt-get install nginx-common -y
RUN rm *dbg*.deb \
	&& dpkg -i nginx-full*.deb
RUN nginx -V

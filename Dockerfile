FROM: centos:latest
MAINTAINER: karandeepsingh165@gmail.com
RUN yum install httpd -y \
  zip \
  unzip
  ADD https://www.free-css.com/assets/files/free-css-templates/download/page267/nocobot.zip /var/www/html
  WORKDIR /var/www/html
  RUN unzip nocobot.zip
  RUN cp -rvf  nocobot/* .
  RUM rm -rf nocobot nocobot.zip
  CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
  EXPOSE 80
  

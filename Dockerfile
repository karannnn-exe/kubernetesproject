FROM centos:latest
MAINTAINER karandeepsingh165@gmail.com
RUN yum install httpd -y \
  zip \
  unzip
  ADD https://www.free-css.com/assets/files/free-css-templates/download/page268/flexed.zip /var/www/html
  WORKDIR /var/www/html
  RUN unzip flexed.zip
  RUN cp -rvf  flexed/* .
  RUN rm -rf flexed flexed.zip
  CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
  EXPOSE 80

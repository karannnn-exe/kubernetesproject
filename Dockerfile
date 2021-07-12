FROM centos:latest
MAINTAINER karandeepsingh165@gmail.com
RUN yum install httpd -y \
  zip \
  unzip
  ADD https://opens-buxkets.s3.us-east-2.amazonaws.com/build.zip /var/www/html
  WORKDIR /var/www/html
  RUN unzip build.zip
  RUN cp -rvf  build/* .
  RUN rm -rf build build.zip
  CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
  EXPOSE 80

FROM ubuntu
MAINTAINER Gaston Ndoumbe
RUN apt-get update
RUN apt-get install -y nginx
COPY ./battleboat-gh-pages/ /var/www/html
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
EXPOSE 80


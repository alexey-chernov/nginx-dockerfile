FROM ubuntu
MAINTAINER Olexii Chernov <chernovoleksiy@gmail.com>

RUN apt-get -y update && apt-get -y install nginx

RUN echo 'Тестове Завдання Виконано!' \
        >/usr/share/nginx/html/index.html

COPY nginx.conf /etc/nginx/sites-available/default

EXPOSE 88/tcp

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]


FROM nginx

RUN useradd daniel

COPY fruit /usr/share/nginx/html

ENV archivo docker

WORKDIR /usr/share/nginx/html

RUN echo "$archivo" > env.html

EXPOSE 90

LABEL version = 1

USER daniel

RUN echo "Yo soy $(whoami)" > /tmp/yo.html

USER root

RUN cp /tmp/yo.html docker.html

VOLUME /var/log/nginx

CMD nginx -g 'daemon off;'
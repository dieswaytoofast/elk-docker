FROM nginx:1.10.1

# Set the environment variables that we might need
COPY environment.sh /tmp/environment.sh
RUN set -a && . /tmp/environment.sh

ADD nginx/nginx.conf /etc/nginx/nginx.conf
ADD nginx/elk_nginx.conf /etc/nginx/nginx.conf.d/elk_nginx.conf

ADD nginx/keys /etc/nginx/keys/

ADD nginx/.htpasswd /etc/nginx/.htpasswd

EXPOSE $ELK_NGINX_PORT_HTTP $ELK_NGINX_PORT_HTTPS

FROM logstash:2.3.4

### COMMON FOR ALL CONTAINERS

# ES
ARG ELK_ELASTICSEARCH_PORT
ENV ELK_ELASTICSEARCH_PORT $ELK_ELASTICSEARCH_PORT
ARG ELK_ELASTICSEARCH_HOST
ENV ELK_ELASTICSEARCH_HOST $ELK_ELASTICSEARCH_HOST
# LOGSTASH
ARG ELK_LOGSTASH_PORT
ENV ELK_LOGSTASH_PORT $ELK_LOGSTASH_PORT
# KIBANA
ARG ELK_KIBANA_PORT
ENV ELK_KIBANA_PORT $ELK_KIBANA_PORT
# NGINX
ARG ELK_NGINX_PORT_HTTP
ENV ELK_NGINX_PORT_HTTP $ELK_NGINX_PORT_HTTP
ARG ELK_NGINX_PORT_HTTPS
ENV ELK_NGINX_PORT_HTTPS $ELK_NGINX_PORT_HTTPS

### END COMMON FOR ALL CONTAINERS ###

RUN mkdir -p /config-dir
COPY logstash/logstash.conf /config-dir/logstash.conf

EXPOSE $ELK_LOGSTASH_PORT


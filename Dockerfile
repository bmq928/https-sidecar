FROM nginxinc/nginx-unprivileged:stable-alpine
COPY ./default.conf.template /etc/nginx/templates/

# default env
ENV NGINX_PORT 4430
ENV NGINX_CERTS_DIR /etc/nginx/certs
ENV ENDPOINT http://localhost:3000
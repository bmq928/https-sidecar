FROM nginxinc/nginx-unprivileged:stable-alpine
COPY ./default.conf.template /etc/nginx/templates/

# default env
ENV NGINX_PORT 4430
ENV NGINX_TLS_CERTS_PATH /vault/secrets/sidecar-tls.crt
ENV NGINX_TLS_KEY_PATH /vault/secrets/sidecar-tls.key
ENV NGINX_TLS_CA_PATH /vault/secrets/sidecar-ca.crt
ENV ENDPOINT http://localhost:3000
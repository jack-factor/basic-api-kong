FROM kong:latest

LABEL Jack Moreno

WORKDIR /usr/local/kong/declarative/

COPY kong.yml kong.yml

ENV KONG_DATABASE off
ENV KONG_DECLARATIVE_CONFIG /usr/local/kong/declarative/kong.yml
ENV KONG_PROXY_ACCESS_LOG /dev/stdout
ENV KONG_ADMIN_ACCESS_LOG /dev/stdout
ENV KONG_PROXY_ERROR_LOG /dev/stderr
ENV KONG_ADMIN_ERROR_LOG /dev/stderr
ENV KONG_ADMIN_LISTEN 0.0.0.0:8001, 0.0.0.0:8444 ssl

EXPOSE 8000 8443 8001 8444

FROM postgres:latest
ENV POSTGRES_USER main
ENV POSTGRES_PASSWORD ujvFYppR@LdUSvW#
ENV POSTGRES_DB main
COPY scripts /docker-entrypoint-initdb.d/
FROM postgres:latest
ENV POSTGRES_USER main
ENV POSTGRES_PASSWORD "kCKF3ZdUIbCPZF7fwREUJLEevSyyZGWbS68vJSZx5ze4W9PyM9ZXHevtGgScnmRu"
ENV POSTGRES_DB main

COPY scripts /docker-entrypoint-initdb.d/
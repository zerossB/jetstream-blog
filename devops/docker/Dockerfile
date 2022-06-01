ARG BASEIMAGE=anave/php-laravel:8
FROM ${BASEIMAGE}

ARG ROOT=/var/www/html

RUN pecl install -o -f redis; \
    rm -rf /tmp/pear; \
    docker-php-ext-enable redis;

COPY . ${ROOT}

# Add unprivileged user to run the image
ARG UNAME=bilduser
ARG UID=1001
ARG GID=1001
RUN addgroup -g ${GID} ${UNAME} && \
    adduser -u ${UID} -G ${UNAME} -s /bin/sh -D ${UNAME} && \
    chown ${UNAME} -R ${ROOT}
USER ${UNAME}

WORKDIR $ROOT
ENTRYPOINT ["scripts/entrypoint.sh"]

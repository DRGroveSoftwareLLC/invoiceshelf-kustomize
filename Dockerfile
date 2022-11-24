ARG CRATER_APP_VERSION
ARG user

FROM drgrovellc/crater-app-base:${CRATER_APP_VERSION}
ARG CRATER_APP_VERSION
ARG user

ADD crater-${CRATER_APP_VERSION}/ /var/www/

USER root
RUN cp /var/www/docker-compose/php/uploads.ini /usr/local/etc/php/conf.d/uploads.ini

WORKDIR /var/www/
USER ${user}

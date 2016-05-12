FROM bitnami/base-ubuntu:14.04-onbuild
MAINTAINER Sanjay <sp00366732@techmahindra.com>

ENV SANJAY_APP_DIR=$SANJAY_PREFIX/apache-tomcat \
    SANJAY_APP_NAME=tomcat \
    SANJAY_APP_USER=tomcat \
    SANJAY_APP_DAEMON=catalina.sh \
    SANJAY_APP_VERSION=8.0.33-0

ENV SANJAY_APP_VOL_PREFIX=/sp00366732/$SANJAY_APP_NAME \
    PATH=$SANJAY_APP_DIR/bin:$PATH

RUN $SANJAY_PREFIX/install.sh --tomcat_manager_username manager

COPY rootfs/ /

EXPOSE 8080
VOLUME ["$SANJAY_APP_VOL_PREFIX/conf", "$SANJAY_APP_VOL_PREFIX/logs"]

ENTRYPOINT ["/entrypoint.sh"]

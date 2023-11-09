FROM alpine:latest

ARG UID GID TIMEZONE

ENV USER=usr
ENV GROUP=grp
ENV HOME=/home/usr
ENV WORDPRESS_FOLDER=/home/usr/wp

ENV PATH=${PATH}:/home/usr/bin:/home/usr/sh
ENV TIMEZONE=${TZ}

RUN echo ${TZ} > "/etc/timezone"

RUN apk add --no-cache \
  bash \
  curl \
  envsubst \
  git \
  grep \
  micro \
  mariadb-client \
  php \
  php-fpm \
  php-mysqli

RUN addgroup -g "${GID}" -S "${GROUP}"
RUN adduser -S "${USER}" -u "${UID}" -G "${GROUP}" -h "${HOME}" -s "/bin/bash"

COPY ./home "${HOME}"

RUN chown -R "${USER}:${GROUP}" "${HOME}"
RUN chown -R ${USER}:${GROUP} /var/log /run

USER ${USER}
RUN mkdir -p "${HOME}/log"
RUN chown -R ${USER}:${GROUP} "${HOME}"

RUN curl --output ${HOME}/.bashrc \
  https://raw.githubusercontent.com/triole/ghwfe/master/bashrc/default.sh

RUN curl --output ${HOME}/sh/install_from_github.sh \
  https://raw.githubusercontent.com/triole/ghwfe/master/sh/install_from_github.sh
RUN chmod +x ${HOME}/sh/install_from_github.sh

RUN ${HOME}/sh/install_from_github.sh \
  "caddyserver/caddy" "_linux_amd64.tar.gz" "${HOME}/bin"

RUN ${HOME}/sh/install_from_github.sh \
  "triole/supervisord" "_linux_x86_64.tar.gz" "${HOME}/bin"

RUN install_wordpress
RUN cp -f "${HOME}/conf/wp-config.php" "${HOME}/wp/wp-config.php"

HEALTHCHECK --interval=3s --timeout=5s --retries=3 \
CMD pgrep php-fpm

CMD ["supervisord", "-c", "/home/usr/conf/supervisord.conf"]

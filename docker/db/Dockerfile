FROM mysql:8.0-debian

ARG UID GID

ENV USER=usr
ENV UID=${UID}
ENV GNAME=grp
ENV GID=${GID}
ENV HOME=/home/usr

RUN apt update -y && apt install -y \
  curl \
  micro

RUN groupadd -g "${GID}" "${GNAME}" \
 && useradd -m -s /bin/bash -g "${GNAME}" -u "${UID}" "${USER}" \
 && chown -R "${USER}:${GID}" "${HOME}"

RUN curl --output ${HOME}/.bashrc \
  https://raw.githubusercontent.com/triole/ghwfe/master/bashrc/default.sh

RUN mkdir -p /usr/localhost
RUN chown ${UID}:${GID} /usr/localhost /var/lib/mysql

HEALTHCHECK --interval=60s --timeout=5s --retries=3 \
CMD echo "SELECT 1" | mysql -h ${MYSQL_HOST} -u root -p${MYSQL_ROOT_PASSWORD} mysql

USER ${USER}
CMD [\
"mysqld", "-h", "localhost", "-P", "3306", \
"--default-authentication-plugin=mysql_native_password" \
]

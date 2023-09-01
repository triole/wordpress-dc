FROM mysql:latest

ARG UID GID

# RUN apt update && apt upgrade -y && apt install -y \
#   curl gettext micro procps postgresql-client \
#   && rm -rf /var/lib/apt/lists/*

# RUN sed -i -r "s/postgres:x:([0-9]+):([0-9]+)/postgres:x:${UID}:${GID}/g" /etc/passwd
# RUN sed -i -r "s/postgres:x:([0-9]+)/postgres:x:${GID}/g" /etc/group

# RUN chown -R ${UID}.${GID} /var/lib/postgresql
# RUN mkdir -p /var/run/postgresql
# RUN chown -R ${UID}.${GID} /var/run/postgresql

# # USER ${USER}
# # RUN mkdir -p ${HOME}/sh
# # RUN curl --output ${HOME}/.bashrc \
# #   https://raw.githubusercontent.com/triole/ghwfe/master/bashrc/default.sh

CMD ["mysqld", "-h", "localhost", "-P", "3306", "-u", "mysql"]

FROM mysql:8.0-debian

ARG UID GID

RUN apt update -y && apt install -y \
  curl \
  micro

RUN curl --output /root/.bashrc \
  https://raw.githubusercontent.com/triole/ghwfe/master/bashrc/default.sh

CMD [\
"mysqld", "-h", "localhost", "-P", "3306", "-u", "mysql", \
"--default-authentication-plugin=mysql_native_password" \
]

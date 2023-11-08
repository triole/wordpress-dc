ALTER USER 'root' @'localhost' IDENTIFIED WITH caching_sha2_password BY '${MYSQL_ROOT_PASSWORD}';
ALTER USER 'root' @'%' IDENTIFIED WITH caching_sha2_password BY '${MYSQL_ROOT_PASSWORD}';
ALTER USER '${MYSQL_USER}' @'${MYSQL_HOST}' IDENTIFIED WITH caching_sha2_password BY '${MYSQL_PASSWORD}';
ALTER USER '${MYSQL_USER}' @'%' IDENTIFIED WITH caching_sha2_password BY '${MYSQL_PASSWORD}';

ALTER USER 'root' @'localhost' IDENTIFIED WITH 'mysql_native_password' BY '${MYSQL_ROOT_PASSWORD}';
ALTER USER 'root' @'%' IDENTIFIED WITH 'mysql_native_password' BY '${MYSQL_ROOT_PASSWORD}';
ALTER USER '${MYSQL_USER}' @'${MYSQL_HOST}' IDENTIFIED WITH mysql_native_password BY '${MYSQL_PASSWORD}';
ALTER USER '${MYSQL_USER}' @'%' IDENTIFIED WITH mysql_native_password BY '${MYSQL_PASSWORD}';

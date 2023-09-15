# Wordpress DC

<!-- toc -->

- [Configuration](#configuration)

<!-- /toc -->

A strongly opinionated wordpress docker compose setup.

# Configuration

This is what a config looks like.

```go mdox-exec="cat examples/conf.toml"
debug = true

project_prefix = "wpd"
exposed_port = 80

wp_home = "http://localhost"
wp_siteurl = "http://localhost"
server_https = "off"
server_http_host = "localhost"
server_name = "localhost"

mysql_host = "wpd-db"
mysql_name = "akfd"
mysql_user = "akfd"
mysql_password = "<A SECRET>"
mysql_root_password = "<A SECRET>"

auth_key = "<A SECRET>"
secure_auth_key = "<A SECRET>"
logged_in_key = "<A SECRET>"
nonce_key = "<A SECRET>"
auth_salt = "<A SECRET>"
secure_auth_salt = "<A SECRET>"
logged_in_salt = "<A SECRET>"
nonce_salt = "<A SECRET>"
```

# Wordpress DC

<!-- toc -->

- [Configuration](#configuration)

<!-- /toc -->

A strongly opinionated wordpress docker compose setup.

# Configuration

This is what a config looks like.

```go mdox-exec="cat examples/conf.toml"
project_prefix = "wpd"
exposed_port = 8989

mysql_root_password = "secret_root_password"
mysql_database = "db"
mysql_user = "user"
mysql_password = "secret_password"
```

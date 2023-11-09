# Wordpress DC

<!-- toc -->

- [Folder structure](#folder-structure)
  - [Database dumps](#database-dumps)
  - [Wp-content](#wp-content)
- [How to init on first run](#how-to-init-on-first-run)
- [Configuration](#configuration)

<!-- /toc -->

A strongly opinionated wordpress docker compose setup which stores its configuration values inside a `conf.toml`.

# Folder structure

The setup contains a bunch of helper scripts that rely on a certain folder structure. Especially if there is an already existing wordpress instance that should be migrated. Database dumps and the wp-content folder can be imported into this setup quite easily if the folder structure is right. Here are the locations...

## Database dumps

Database dumps should be put under `vol/wp/dumps`. The `import_latest_db_dump` shell script looks into this folder and imports the latest of the sql files.

## Wp-content

The `wp-content` folder should go into `vol/wp/wp-content`. If this folder exists the `symlink_wp-content` script will symlink it into the correct locations inside the container.

# How to init on first run

On first run the database and wp-content will be empty. If you want to import existing data please make sure the file locations mentioned above are correct. If they are run...

```
init_all
```

This script will run all necessary commands. It creates the database, sets the user rights, symlinks your `wp-content` and imports the latest dump.

# Configuration

This is what a configuration looks like.

```go mdox-exec="cat examples/conf.toml"
debug = true

project_prefix = "wpd"
exposed_port = 8989

wp_home = "http://localhost:8989"
wp_siteurl = "http://localhost:8989"
server_https = "off"
server_http_host = "localhost:8989"
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

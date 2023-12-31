header() {
  echo -e "\n\033[0;33m${@}\033[0m"
}

rsql() {
  header "${1}"
  sql "${1}"
}

rcmd() {
  cmd=${@}
  echo -e "\033[0;93m[$(ts)] ${cmd}\033[0m"
  eval ${cmd}
}

ts() {
  date "+%d-%b-%Y %H:%M:%S"
}

local-start() {
  db-start-proxy
  sleep 2 # give the proxy a moment to connect; it's generally pretty quick
  api-start
  webapp-start
}

local-stop() {
  webapp-stop
  api-stop
  db-stop-proxy
}

local-restart() {
  local-stop
  sleep 2
  local-start
}

local-clear-logs() {
  rm "${BASE_DIR}/api-server.log" "${BASE_DIR}/db-proxy.log" "${BASE_DIR}/webapp-dev-server.log" 2> /dev/null
}
#!/usr/bin/env bash
# shellcheck source=../utils/env.bash   # @env @key @token
# shellcheck source=../utils/print.bash # @fatal

set_okteto_token() { @token store Okteto 48; }

_okteto=$(which okteto || true)

okteto() {
  [ -z "${_okteto}" ] && @fatal please setup environment first

  local key token
  key=$(@key Okteto)
  token=${!key:-$(@env get "${key}")}

  local args=("${@}")
  OKTETO_TOKEN="${token}" "${_okteto}" "${args[@]}"
}

compose() { docker compose -p tact-app "${@}"; }
build()   { compose build "${@}"; }
start()   { compose up -d; }

publish() {
  okteto context use https://cloud.okteto.com
  okteto deploy --build
}

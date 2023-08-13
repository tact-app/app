#!/usr/bin/env bash
# shellcheck source=../git/core.bash  # @root
# shellcheck source=_.bash            # $_BINPATH

# Example: run tools install
tools() {
  if [[ ${#@} -eq 0 ]]; then
    set -- install
  fi

  local arg args=()
  for arg in "${@}"; do
    shift

    if [[ ${#args[@]} -eq 0 ]]; then
      case "${arg}" in
      install)
        @install gh gum jq okteto wait-for-it
        ;;
      --) continue ;;
      *) args+=("${arg}") ;;
      esac
      continue
    fi

    if [[ "${arg}" == '--' ]]; then
      "${args[@]}"
      args=()
      continue
    fi
    args+=("${arg}")
  done
  "${args[@]}"
}

@install() {
  local tool script
  for tool in "${@}"; do
    script="$(@root)/bin/lib/tools/installer/${tool}"
    [ ! -f "${script}" ] && @fatal unknown tool "${tool}"
    # shellcheck source=installer/gum
    source "${script}" && "@install-${tool}" "${_BINPATH}"
  done
}

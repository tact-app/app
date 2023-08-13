#!/usr/bin/env bash
# shellcheck source=../git/core.bash      # @pull
# shellcheck source=../tools/okteto.bash  # build
# shellcheck source=../tools/tools.bash   # tools

refresh() {
  @pull

  tools
  build --pull
}

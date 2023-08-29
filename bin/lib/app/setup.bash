# shellcheck source=refresh.bash          # refresh
# shellcheck source=../tools/okteto.bash  # set_okteto_token
# shellcheck source=../tools/github.bash  # set_github_token

setup() {
  [ ! -f .env ] && cp .env.example .env

  set_okteto_token || @fatal the token is required
  set_github_token || true

  refresh
}

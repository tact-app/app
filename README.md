![Tact.app][social.preview]

# 🤺 Tact.app

The next-generation Time Management Software and Work-Life Management Platform.

## Quick start

Requirements:

- [Docker Desktop][Docker].
- Access tokens for
  - [Okteto][]

[Docker]:         https://www.docker.com/products/docker-desktop/
[Okteto]:         https://www.okteto.com/

```bash
$ alias run=./Taskfile
$ run setup
$ run wait-for-it -q -w localhost:3000 -- open http://localhost:3000/ &
$ run start
```

## Manage secrets

You can update tokens by the following commands

```bash
$ run set_github_token
$ run set_okteto_token
```

## Tools

### Installation

```bash
$ run tools install
```

### Docker Compose
**Useful:** [docs][Docker Compose], [src](https://github.com/docker/compose).

```bash
$ run compose --help
```

Available Docker images:
- ghcr.io/tact-app/web:latest, GitHub Registry
- quay.io/tact-app/web:latest, Quay Registry
- octopot/tact-app-web:latest, Docker Hub

### GitHub CLI
**Useful:** [docs][GitHub CLI], [src](https://github.com/cli/cli).

```bash
$ run gh help
$ run @workflows
```

### Okteto CLI
**Useful:** [docs][Okteto CLI], [src](https://github.com/okteto/okteto).

```bash
$ run okteto context use https://cloud.okteto.com
$ run okteto up

$ run okteto --help
```

You can avoid using the token parameter when working with these commands,
it's substituted automatically under the hood.

[Docker Compose]:   https://docs.docker.com/compose/reference/
[GitHub CLI]:       https://cli.github.com/
[Okteto CLI]:       https://www.okteto.com/docs/cloud/okteto-cli/

## License

GNU Affero General Public License v3.0 or later.
See [LICENSE](LICENSE) to see the full text.

We use [CLA assistant][] to sign copyright agreements while contributing.
See [CLA][] to see the full text.

[CLA]:                https://gist.github.com/kamilsk/44221b6834a6cdc273b5e3411224f8be
[CLA assistant]:      https://cla-assistant.io/tact-app/app
[CLA assistant.src]:  https://github.com/cla-assistant/cla-assistant

<p align="right">made with ❤️ for everyone by <a href="https://www.octolab.org/">OctoLab</a></p>

[social.preview]: https://cdn.octolab.org/tact/interface.png

# workspace-py

![Docker Hub](https://img.shields.io/docker/v/startown/workspace-py?sort=date&label=docker%20hub&logo=docker&logoColor=white&style=flat-square) ![Image size](https://img.shields.io/docker/image-size/startown/workspace-py/0.3.1?label=size&style=flat-square) ![License](https://img.shields.io/github/license/startown-ai/workspace-py?style=flat-square)

A dev container image for Python with:

- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) with the [Pure](https://github.com/sindresorhus/pure) prompt
  - [z](https://github.com/agkozak/zsh-z) for directory jumping
  - [syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
  - [autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [uv](https://github.com/astral-sh/uv) to install Python and manage projects
- [Jujutsu](https://github.com/jj-vcs/jj) and [Git](https://git-scm.com) for version control
- [OpenSSH](https://www.openssh.com) client to push and sign commits

## Installation

Pull the image:

```bash
docker pull startown/workspace-py:0.3.1
```

## Usage

In your project's `.devcontainer/devcontainer.json`:

```json
{
  "image": "startown/workspace-py:0.3.1",
  "containerEnv": {
    "SSL_CERT_FILE": "/etc/ssl/certs/ca-certificates.crt"
  }
}
```

`SSL_CERT_FILE` points Python at the system certificates; without it, HTTPS requests from Python fail certificate verification.

## Security

Scan the image with Docker Scout (needs a Docker login). Our [VEX file](workspace-py.vex.json) marks which reported CVEs affect it:

```bash
docker scout cves \
  --vex-location https://raw.githubusercontent.com/startown-ai/workspace-py/main/workspace-py.vex.json \
  --vex-author '<paxonlee@startown.ai>' \
  startown/workspace-py:0.3.1
```

## License

This repository is licensed under the [Apache License 2.0](LICENSE). The software in the image keeps its own licenses, and their license files ship in the image.

# workspace-py

![Docker Hub](https://img.shields.io/docker/v/startown/workspace-py?sort=date&label=docker%20hub&logo=docker&logoColor=white&style=flat-square) ![Image size](https://img.shields.io/docker/image-size/startown/workspace-py/0.3.0?label=size&style=flat-square) ![License](https://img.shields.io/github/license/startown-ai/workspace-py?style=flat-square)

A workspace for Python development on [Docker Hardened Images](https://docs.docker.com/dhi/), with:

- [uv](https://github.com/astral-sh/uv) and uvx, which install Python when a project needs it
- [Jujutsu](https://github.com/jj-vcs/jj) (jj) and Git
- [Zsh](https://www.zsh.org) with [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh), the [Pure](https://github.com/sindresorhus/pure) prompt, [z](https://github.com/agkozak/zsh-z), [syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting), and [autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- OpenSSH client

## Installation

Pull the image:

```bash
docker pull startown/workspace-py:0.3.0
```

## Usage

Use it as a dev container image in `.devcontainer/devcontainer.json`:

```json
{
  "image": "startown/workspace-py:0.3.0",
  "containerEnv": {
    "SSL_CERT_FILE": "/etc/ssl/certs/ca-certificates.crt"
  }
}
```

`SSL_CERT_FILE` points Python at the system certificates; without it, HTTPS requests from Python fail certificate verification.

Or start a shell in the current folder:

```bash
docker run -it --rm -v "$PWD":/workspace -w /workspace startown/workspace-py:0.3.0
```

## License

This repository is licensed under the [Apache License 2.0](LICENSE). The software in the image keeps its own licenses, and their license files ship in the image.

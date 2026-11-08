FROM dhi.io/debian-base:trixie-dev@sha256:61025cea33d5910165ced8b33edd3f6b6bfe161e129174887936a1b9a1442b20 AS build

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      gcc=4:14.2.0-1+deb13u0+dhi0 \
      libc6-dev=2.41-12+deb13u4+dhi1 \
      make=4.4.1-2+deb13u0+dhi1 \
      rustup=1.27.1-3* && \
    rustup set profile minimal && \
    rustup default 1.99.1

RUN cargo install \
      --locked \
      --root /opt/uv \
      --bin uv --bin uvx uv \
      --version 0.13.7 && \
    rm /opt/uv/.crates.toml /opt/uv/.crates2.json

ADD https://raw.githubusercontent.com/astral-sh/uv/0.13.7/LICENSE-APACHE /tmp/LICENSE
RUN install -Dm644 -t /opt/uv/share/licenses/uv /tmp/LICENSE

FROM scratch

COPY --from=build /opt/uv /opt/uv

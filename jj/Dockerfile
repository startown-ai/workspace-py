FROM dhi.io/debian-base:trixie-dev@sha256:94571f3dc07fbc7166f6f1cbf1fe068a7647198ee2554e6b90d59a68cc8b053c AS build

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
      --root /opt/jj \
      --bin jj jj-cli \
      --version 0.47.1 && \
    rm /opt/jj/.crates.toml /opt/jj/.crates2.json

RUN install -Dm644 -t /opt/jj/share/licenses/jj ~/.cargo/registry/src/*/jj-cli-0.47.1/LICENSE

FROM scratch

COPY --from=build /opt/jj /opt/jj

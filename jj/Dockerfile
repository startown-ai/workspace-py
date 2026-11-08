FROM dhi.io/rust:1.99.1-debian13-dev@sha256:be6c6ec91c61ae15b80521052df1c7f60fefd303293563b3dbd9f57e58783809 AS build


RUN cargo install \
      --locked \
      --root /opt/jj \
      --bin jj jj-cli \
      --version 0.47.1

RUN install -Dm644 -t /opt/jj/share/licenses/jj ~/.cargo/registry/src/*/jj-cli-0.47.1/LICENSE

FROM scratch

COPY --from=build /opt/jj /opt/jj

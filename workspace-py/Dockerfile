FROM dhi.io/debian-base:trixie-dev@sha256:94571f3dc07fbc7166f6f1cbf1fe068a7647198ee2554e6b90d59a68cc8b053c
ENV LANG=C.UTF-8

COPY --from=docker.io/startown/zsh:5.9-1@sha256:87cecb527cebce57a03eeeb7fdb99c1633a3291845e8a25296a8e7997db54192 /opt/zsh/ /
COPY --from=docker.io/startown/jj:0.47.1-1@sha256:989fc1446c40c33bca076b0ac3d3e351f60c751dea3c4678c08825166f9e02d9 /opt/jj/ /usr/local/
COPY --from=docker.io/startown/uv:0.13.7-1@sha256:5e0f088aecada53cb32a4fd3db8092954e931948e8f752e2ee893d631780e228 /opt/uv/ /usr/local/

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      git=1:2.47.3-0+deb13u1+dhi2 \
      openssh-client=1:10.0p1-7+deb13u4+dhi2 && \
    rm -rf /var/lib/apt/lists/*

RUN update-shells && \
    usermod --shell /usr/bin/zsh root && \
    ln -s certs/ca-certificates.crt /etc/ssl/cert.pem

ENTRYPOINT ["/usr/bin/zsh"]

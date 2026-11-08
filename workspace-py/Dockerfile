FROM dhi.io/debian-base:trixie-dev@sha256:61025cea33d5910165ced8b33edd3f6b6bfe161e129174887936a1b9a1442b20
ENV LANG=C.UTF-8

COPY --from=zsh /opt/zsh /
COPY --from=dhi.io/uv:0.13.7@sha256:b8221aa523be9c38283b17391c313cd354a0e8e0e3e075d2804934895fe1d23d /usr/local/bin/uv /usr/local/bin/uvx /usr/local/bin/
COPY --from=dhi.io/uv:0.13.7@sha256:b8221aa523be9c38283b17391c313cd354a0e8e0e3e075d2804934895fe1d23d /opt/docker/sbom/uv/.spdx.uv.json /usr/local/share/licenses/uv/uv.spdx.json
ADD --chmod=644 --checksum=sha256:c71d239df91726fc519c6eb72d318ec65820627232b2f796219e87dcf35d0ab4 https://raw.githubusercontent.com/astral-sh/uv/0.13.7/LICENSE-APACHE /usr/local/share/licenses/uv/
ADD --chmod=644 --checksum=sha256:860e3d7a86b84e6a7012c7a635fc64df475cebc6cce34dfeb73a5982ec58176c https://raw.githubusercontent.com/astral-sh/uv/0.13.7/LICENSE-MIT /usr/local/share/licenses/uv/
COPY --from=jj /opt/jj/bin/jj /usr/local/bin/jj
COPY --from=jj /opt/jj/share/licenses/ /usr/local/share/licenses/

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      git=1:2.47.3-0+deb13u1+dhi2 \
      openssh-client=1:10.0p1-7+deb13u4+dhi2 && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/zsh"]

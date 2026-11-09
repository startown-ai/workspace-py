FROM dhi.io/debian-base:trixie-dev@sha256:94571f3dc07fbc7166f6f1cbf1fe068a7647198ee2554e6b90d59a68cc8b053c AS build

RUN apt-get update && \
    apt-get download \
      zsh=5.9-8* \
      zsh-common=5.9-8 && \
    for deb in *.deb; do dpkg-deb -x "$deb" /opt/zsh; done

ADD https://github.com/ohmyzsh/ohmyzsh.git#17a2b4c3a5855524ad4772a17ada0dc474e2fdf3 /opt/zsh/usr/share/oh-my-zsh
ADD https://github.com/sindresorhus/pure.git#cac55d0b531a0db72294c9bba9453dfa6374c59d /opt/zsh/usr/share/zsh/pure
COPY .zshrc /opt/zsh/root/.zshrc

FROM scratch

COPY --from=build /opt/zsh /opt/zsh

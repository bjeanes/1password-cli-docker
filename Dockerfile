FROM debian:latest
MAINTAINER Bo Jeanes <me@bjeanes.com>

ARG VERSION=0.5.5

RUN apt-get update && apt-get -fy install wget unzip && \
  wget -O 1password.zip \
  https://cache.agilebits.com/dist/1P/op/pkg/v${VERSION}/op_linux_amd64_v${VERSION}.zip && \
  unzip 1password.zip op -d /usr/bin && \
  chmod +x /usr/bin/op && \
  rm 1password.zip

ENTRYPOINT ["op"]
FROM debian:latest
LABEL MAINTAINER="https://github.com/nehal-ahmmed/n-phish"

WORKDIR /n-phish/
ADD . /n-phish

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./n-phish.sh"]

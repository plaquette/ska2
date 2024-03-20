FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y wget tar ca-certificates --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/bacpop/ska.rust/releases/download/v0.3.7/ska-v0.3.7-ubuntu-latest-stable.tar.gz -O ska.tar.gz

RUN tar -xzf ska.tar.gz -C /usr/local/bin/ && \
    rm ska.tar.gz

RUN chmod +x /usr/local/bin/ska

CMD ["bash"]
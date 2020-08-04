FROM debian

RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y jq && \
    curl -L https://dl.min.io/client/mc/release/linux-amd64/mc > /usr/local/bin/mc && \
    chmod +x /usr/local/bin/mc && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

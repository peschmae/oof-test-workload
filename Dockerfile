FROM debian:bookworm

# Install dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ncat && \
    rm -rf /var/lib/apt/lists/*

COPY scripts/* /usr/local/bin/

# Make scripts executable
RUN chmod +x /usr/local/bin/* && \
    mkdir -p /test_dir && \
    touch /test_dir/testfile.txt
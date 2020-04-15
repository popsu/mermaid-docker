#!/bin/bash

# Minify the dockerfile by running this script
# Requires docker-slim
# https://github.com/docker-slim/docker-slim

cat > flow.mmd <<EOF
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
EOF

docker-slim build \
    --http-probe=false \
    --continue-after=1 \
    --mount="$(pwd)":/data thovi/mermaidcli:latest \
    --cmd="-i flow.mmd -o flow.png"

# Cleanup
rm -f flow.png
rm flow.mmd

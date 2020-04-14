#!/bin/bash

docker run -v "$(pwd)":/data \
    mermaid-js "$@"


# Docker Mermaidcli

Dockerized [mermaidcli](https://github.com/mermaid-js/mermaid.cli) to render [Mermaid](https://mermaid-js.github.io/mermaid/#/) diagrams.

## Usage
- Mount current directory
- Run the image as current user's id so that the output file has has same owner
```bash
docker run -v "$(pwd)":/data -u $(id -u) thovi/mermaidcli <options for mmdc>
```

## Example
```bash
cat > flow.mmd <<EOF
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
EOF
docker run -v "$(pwd)":/data -u $(id -u) thovi/mermaidcli -i flow.mmd -o flow.png
```
## Minified version

- Minify the image using [Docker slim](https://github.com/docker-slim/docker-slim) by running [minify.sh](minify.sh) script

FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        biber=2.16-1 \
        latexmk=1:4.70b-0.2 \
        texlive-full=2020.20210202-3 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /tmp

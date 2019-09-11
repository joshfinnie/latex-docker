FROM debian:buster-slim

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        biber=2.12-2 \
        latexmk=1:4.61-0.1 \
        texlive-full=2018.20190227-2 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /tmp

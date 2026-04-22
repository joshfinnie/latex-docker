FROM alpine:3.23.4

RUN apk add --no-cache tectonic

ENV TECTONIC_CACHE=/usr/local/tectonic-cache

COPY preload.tex /tmp/preload.tex
RUN tectonic --outdir /tmp /tmp/preload.tex && \
    rm /tmp/preload.tex /tmp/preload.pdf

WORKDIR /data

ENTRYPOINT ["tectonic"]
CMD ["sample.tex"]

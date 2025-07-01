FROM debian:bookworm-slim

RUN apt-get update && apt-get install --no-install-recommends -y \
  latexmk \
  biber \
  texlive-latex-recommended \
  texlive-latex-extra \
  texlive-fonts-recommended \
  texlive-fonts-extra \
  texlive-xetex \
  texlive-bibtex-extra \
  texlive-pictures \
  texlive-science \
  texlive-lang-english \
  lmodern \
  cm-super \
  fontconfig && \
  apt-get clean && rm -rf /var/lib/apt/lists/*

RUN fc-cache -f -v

ENV LANG=C.UTF-8

WORKDIR /data

ENTRYPOINT ["latexmk", "-quite", "-pdf", "-interaction=nonstopmode", "-halt-on-error"]
CMD ["sample.tex"]

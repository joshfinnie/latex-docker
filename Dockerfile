FROM alpine:3.20

RUN apk add --no-cache tectonic bash curl

ENV TECTONIC_CACHE=/usr/local/tectonic-cache

RUN echo "\
  \documentclass{article} \
  \usepackage{amsmath, amssymb, amsfonts} \
  \usepackage{graphicx, xcolor} \
  \usepackage{tikz, pgfplots} \
  \usepackage{enumitem, etoolbox} \
  \usepackage{fontawesome, hyperref, xparse} \
  \usepackage[utf8]{inputenc} \
  \usepackage{ragged2e, setspace, titlesec, changepage, geometry} \
  \usepackage{caption, subcaption, float, booktabs, array, multirow, longtable} \
  \usepackage{fancyhdr, microtype, lmodern, textcomp} \
  \begin{document} \
  Hello Preload \
  \[\int_0^1 x^2 dx\] \
  \begin{tikzpicture}\draw (0,0) -- (1,1);\end{tikzpicture} \
  \begin{itemize}\item Test\end{itemize} \
  \faEnvelope \
  \begin{figure}\begin{subfigure}{0.2\textwidth}A\end{subfigure}\end{figure} \
  \end{document}" > /tmp/preload.tex && \
  tectonic /tmp/preload.tex && \
  rm /tmp/preload.tex /tmp/preload.pdf

WORKDIR /data

ENTRYPOINT ["tectonic", "--keep-logs"]
CMD ["sample.tex"]

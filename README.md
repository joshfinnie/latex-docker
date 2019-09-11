# Latex-Docker

This is a Docker file that will install Latex.

## Usage

```
$ docker build -t latex .
$ docker run -v `pwd`:/tmp pdflatex <FILE>
```

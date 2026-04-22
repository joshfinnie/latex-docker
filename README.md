# LaTeX Docker

[![Build Docker Image](https://github.com/joshfinnie/latex-docker/actions/workflows/build.yml/badge.svg)](https://github.com/joshfinnie/latex-docker/actions/workflows/build.yml)

## Features

- Based on `alpine:3.23.4`
- Uses [Tectonic](https://tectonic-typesetting.github.io) for simplified and reliable LaTeX builds
- Supports PDF generation out of the box
- Popular packages pre-cached in the image — works offline after pull
- Minimal and clean console output

## Build the Image

```bash
docker build -t latex-resume .
```

## Usage

To compile a LaTeX file (e.g., `report.tex`):

```bash
docker run --rm -v "$PWD:/data" latex-resume report.tex
```

- `--rm` cleans up the container after it runs
- `-v "$PWD:/data"` mounts the current working directory into the container
- The default working directory inside the container is `/data`
- The default file compiled is `sample.tex`

## What's Inside

- [Tectonic](https://tectonic-typesetting.github.io) — a modernized LaTeX engine that fetches and caches packages automatically
- Many popular packages pre-cached at image build time (math, graphics, TikZ, tables, fonts, and more), so builds work offline once the image is pulled

## Example Files

You can test the setup with the included `sample.tex` file:

```bash
docker run --rm -v "$PWD:/data" latex-resume
```

This produces `sample.pdf` in your current directory.

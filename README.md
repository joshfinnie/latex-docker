# LaTeX Docker

## ✅ Features

- Based on `alpine:3.20`
- Uses `tectonics` for simplified and reliable LaTeX builds
- Supports PDF generation out of the box
- Minimal and clean console output

## 🛠️ Build the Image

```bash
docker build -t latex-resume .
```

## 🚀 Usage

To compile a LaTeX file (e.g., report.tex):

```bash
docker run --rm -v "$PWD:/data" latex-resume sample.tex
```

- `--rm` cleans up the container after it runs
- `-v "$PWD:/data"` mounts the current working directory into the container
- The default working directory inside the container is /data

If you're compiling a file with a different name:

```bash
docker run --rm -v "$PWD:/data" latex-resume my_report.tex
```

## 📦 What's Inside

- [Tectonics](https://docs.rs/tectonic/latest/tectonic/)
- Many popular packages pre-cached

## 📝 Example Files

You can test the setup with a simple `sample.tex` file in the same directory.

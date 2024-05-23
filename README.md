# Bulk Export TikZ to PNG
Export all the relevant images from your LaTex Document in PNG format.

Especially in long LaTeX files, it is cumbersome to extract and export all your `tikz` illustrations by hand.
To speed up this workflow, just add an extra line in front of your illustrations. This tool will do the rest for you.

## How it works
The basic usage in the LaTeX file looks like
```tex
% export picture.png
\begin{tikzpicture}
    ...
\end{tikzpicture}
```

A running and self-explanatory example can be found in [example.tex](example.tex).

## CLI
To start the image generation, run
```zsh
bulk_export {file}.tex -d {export_dir}
```
It is also possible to provide a bunch of .tex Files. All of them have to be located in the same directory though.

You can then similarly run the command

```zsh
bulk_export {dir_with_tex_files} -d {export_dir}
```

The usage of `export_dir` is optional. If not provided, the images will be stored in the current working directory.

## Dependencies
Both `pdflatex` and `magick` have to be installed and executable. On MacOS both tools can be installed via Homebrew.
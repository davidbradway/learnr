# R

I had Ned install R and RStudio to gudenaa.

## Reproducibility

I'm also thinking about a reproducible environment. I've read people use `packrat` or `conda` or other tools for this.

Here's the conda way:
```
conda create -n r-environment r-essentials r-base
conda activate r-environment
conda list --explicit > environment.txt
# next time:
conda env create --file environment.txt
conda deactivate
```

## Command line

To use command line R scripts use the command `Rscript a.R`

## Docker

I haven't dug into this yet, but there is also info for using Docker for R.

Here's a blog post: https://colinfay.me/docker-r-reproducibility/


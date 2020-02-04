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

Here's `packrat`
```
install.packages("packrat")
packrat::init(): Initializes the current working directory as a Packrat project.
packrat::status()
packrat::snapshot(): Save the current state of your library.
packrat::restore(): Restore the library state saved in the most recent snapshot.
packrat::clean(): Remove unused packages from your library.
packrat::bundle(): Bundle a packrat project, for easy sharing.
packrat::unbundle(): Unbundle a packrat project, generating a project directory with libraries restored.
packrat::on(), packrat::off(): Toggle packrat mode on and off, for navigating between projects within a single R session
```

## Command line

To use command line R scripts use the command `Rscript a.R` or `/C/Program\ Files/R/R-3.6.2/bin/R.exe CMD BATCH --vanilla a.R`

## Docker

I haven't dug into this yet, but there is also info for using Docker for R.

Here's a blog post: https://colinfay.me/docker-r-reproducibility/

### Tutorial


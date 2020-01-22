I had Ned install R and RStudio to gudenaa.

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


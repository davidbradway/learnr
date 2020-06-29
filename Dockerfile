#https://colinfay.me/docker-r-reproducibility/

FROM rocker/r-ver:4.0.0

RUN mkdir /home/analysis
RUN mkdir /home/results

ARG WHEN

RUN R -e "options(repos = \
  list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/${WHEN}')); \
  install.packages('tidystringdist')"

# OR USE A PACKAGE VERSION 
RUN R -e "options(repos = list(CRAN = 'http://cran.us.r-project.org')); \
 install.packages('remotes'); \
 remotes::install_version('tidystringdist', '0.1.4')"

COPY myScript.R /home/analysis/myScript.R

CMD cd /home/analysis \
 && R -e "source('myScript.R')" \
 && mv /home/analysis/p.csv /home/results/p.csv

# Build
#docker build --build-arg WHEN=2020-06-24 -t analysis .
#docker build -t analysis .

# Run with volume mount to PWD
## In Git Bash for Windows
#docker run -v `pwd -W`:/home/results analysis

## In Windows CMD
#docker run -v %cd%:/home/results analysis

## In PowerShell or WSL Ubuntu or Linux Ubuntu
#docker run -v $(pwd):/home/results analysis
#docker run -v ${PWD}:/home/results analysis

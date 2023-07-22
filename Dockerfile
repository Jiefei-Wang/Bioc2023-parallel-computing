FROM bioconductor/bioconductor_docker:devel

RUN apt-get update\
&&apt install redis-server -y

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install(ask=FALSE)"

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"


CMD ["sh", "-c", "/usr/bin/redis-server --daemonize yes --requirepass bioc2023;/init"]
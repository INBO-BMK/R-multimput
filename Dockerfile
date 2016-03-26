FROM r-base

MAINTAINER "Thierry Onkelinx" thierry.onkelinx@inbo.be

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    libcurl4-openssl-dev \
    git \
    libssl-dev \
    libssh2-1-dev \
    && Rscript -e 'install.packages("devtools")'
RUN Rscript -e 'devtools::install_github("hadley/dplyr")'
RUN Rscript -e 'install.packages("sp") \
  && Rscript -e 'install.packages("INLA", repos="http://www.math.ntnu.no/inla/R/stable")'
RUN Rscript -e 'install.packages("tidyr")
RUN Rscript -e 'install.packages("assertthat")
RUN Rscript -e 'install.packages("lme4")
RUN Rscript -e 'install.packages("mvtnorm")
RUN Rscript -e 'install.packages("testthat")
RUN Rscript -e 'install.packages("snowfall")
RUN Rscript -e 'install.packages("mgcv")
RUN Rscript -e 'install.packages("knitr")
RUN Rscript -e 'install.packages("rmarkdown")
RUN Rscript -e 'install.packages("covr")
RUN Rscript -e 'install.packages("lintr")

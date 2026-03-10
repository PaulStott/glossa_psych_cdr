# Add the rocker/verse Docker image for R 4.5.2

FROM rocker/verse:4.5.2

# Add our files to container

ADD exp1_analysis.Rmd /home/rstudio/exp1_analysis.Rmd
ADD exp1_tidied.csv /home/rstudio/exp1_tidied.csv
ADD exp2_analysis.Rmd /home/rstudio/exp2_analysis.Rmd
ADD exp2_tidied.csv /home/rstudio/exp2_tidied.csv

# Add appropriate versions of required R packages to container

RUN R -e "install.packages('devtools')"

RUN R -e "require(devtools)"

RUN R -e "devtools::install_version('Hmisc', version = '5.2-5', dependencies = TRUE)"
RUN R -e "devtools::install_version('car', version = '3.1-5', dependencies = TRUE)"
RUN R -e "devtools::install_version('carData', version = '3.0-6', dependencies = TRUE)"
RUN R -e "devtools::install_version('fitdistrplus', version = '1.2-6', dependencies = TRUE)"
RUN R -e "devtools::install_version('survival', version = '3.8-3', dependencies = TRUE)"
RUN R -e "devtools::install_version('MASS', version = '7.3-65', dependencies = TRUE)"
RUN R -e "devtools::install_version('ggthemes', version = '5.2.0', dependencies = TRUE)"
RUN R -e "devtools::install_version('scales', version = '1.4.0', dependencies = TRUE)"
RUN R -e "devtools::install_version('patchwork', version = '1.3.2', dependencies = TRUE)"
RUN R -e "devtools::install_version('stargazer', version = '5.2.3', dependencies = TRUE)"
RUN R -e "devtools::install_version('xtable', version = '1.8-8', dependencies = TRUE)"
RUN R -e "devtools::install_version('kableExtra', version = '1.4.0', dependencies = TRUE)"
RUN R -e "devtools::install_version('texreg', version = '1.39.5', dependencies = TRUE)"
RUN R -e "devtools::install_version('ggpubr', version = '0.6.3', dependencies = TRUE)"
RUN R -e "devtools::install_version('buildmer', version = '2.12', dependencies = TRUE)"
RUN R -e "devtools::install_version('performance', version = '0.16.0', dependencies = TRUE)"
RUN R -e "devtools::install_version('emmeans', version = '2.0.2', dependencies = TRUE)"
RUN R -e "devtools::install_version('lmerTest', version = '3.2-1', dependencies = TRUE)"
RUN R -e "devtools::install_version('lme4', version = '2.0-1', dependencies = TRUE)"
RUN R -e "devtools::install_version('Matrix', version = '1.7-4', dependencies = TRUE)"
RUN R -e "devtools::install_version('lubridate', version = '1.9.5', dependencies = TRUE)"
RUN R -e "devtools::install_version('tibble', version = '3.3.1', dependencies = TRUE)"


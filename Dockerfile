FROM f0nzie/rstudio-tensorflow
MAINTAINER Alfonso Reyes

# install tensorflow, keras inside R as rstudio user
# Python environment created under rstudio user
USER rstudio

## install keras from within R
RUN R -e "devtools::install_github('rstudio/keras')"
RUN R -e "keras::install_keras()" 

# add package kerasR
RUN install2.r --error \
    kerasR

USER root


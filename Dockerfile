FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
  && apt-get install --no-install-recommends -y make texlive-latex-recommended texlive-fonts-extra \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# workaround for not being able to use fontawesome5 in ubuntu 18.04
# https://tex.stackexchange.com/questions/497792/problem-with-fontawesome5-texlive-ubuntu18-04
RUN updmap-sys --enable Map=fontawesome5.map

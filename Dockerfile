FROM ubuntu

RUN apt-get update \
  && apt-get install -y texlive-latex-recommended texlive-fonts-extra \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
  && apt-get install --no-install-recommends -y texlive-latex-recommended texlive-fonts-extra \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

FROM nginx:mainline
MAINTAINER Joost van der Griendt <j.vandergriendt@flusso.nl>

LABEL authors="Joost van der Griendt <j.vandergriendt@flusso.nl>"
LABEL version="1.0.0"
LABEL description="Drove Documentation for Flusso"

RUN apt-get update && apt-get install --no-install-recommends -y curl=7.38.0-4+deb8u5 && rm -rf /var/lib/apt/lists/*
HEALTHCHECK CMD curl --fail http://localhost:80/docs/ || exit 1
COPY site/ /usr/share/nginx/html/docs
RUN ls -lath /usr/share/nginx/html/docs

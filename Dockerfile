FROM maven:3.9.12-eclipse-temurin-25

LABEL maintainer="KRCI Team"

ENV MAKE_VERSION=4.3-4.1build2

RUN apt-get update && \
    apt-get install -y --no-install-recommends make=$MAKE_VERSION && \
    rm -rf /var/lib/apt/lists/*

# 1º Stage
FROM ruby:2.5.0-alpine as builder
ENV RUBYUNBUFFERED 1
RUN ruby -e "p ENV"

# 2º Stage
FROM ruby:2.5.0-alpine
ENV VERSION v1.0.0
ENV RUBYUNBUFFERED 1

COPY --chown=82:82 ./source /source
WORKDIR /source

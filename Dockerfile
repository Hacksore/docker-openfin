#FROM registry.access.redhat.com/ubi8/ubi
FROM centos:latest

USER root

WORKDIR /app

COPY . .

RUN chmod +x setup.sh && ./setup.sh

USER 1000

## override home
ENV HOME /app

CMD /app/test.sh
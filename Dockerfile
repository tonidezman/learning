FROM debian:11

RUN apt update
RUN apt install -y jq git

WORKDIR /learning
COPY . .

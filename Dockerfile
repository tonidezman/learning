FROM debian:11

RUN apt update
RUN apt install -y git sudo
RUN apt install -y jq

RUN useradd -m --shell /bin/bash --groups sudo learning
RUN passwd -d learning

USER learning
WORKDIR /learning
COPY . .

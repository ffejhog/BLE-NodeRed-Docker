FROM ubuntu:latest

RUN apt update && apt install -y --no-install-recommends \
  bluetooth \
  bluez \
  libbluetooth-dev \
  libudev-dev \
  build-essential bluez-tools \
  git \
  python3-pip \
  python3

RUN git clone https://github.com/NaitLee/Cat-Printer.git

ENTRYPOINT [ "python3" , "cat-pinter/server.py"]
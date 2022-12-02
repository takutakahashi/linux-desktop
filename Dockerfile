FROM ghcr.io/takutakahashi/linux-desktop/manjaro:latest

COPY . /src/
WORKDIR /src
RUN make manjaro

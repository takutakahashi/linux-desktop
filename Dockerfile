FROM ubuntu

RUN apt update && apt install -y wget
RUN wget https://github.com/itamae-kitchen/mitamae/releases/download/v1.11.7/mitamae-x86_64-linux \
 && chmod +x mitamae-x86_64-linux \
 && mv mitamae-x86_64-linux /bin/mitamae
COPY . /src/
WORKDIR /src
CMD ["./entrypoint.sh"]

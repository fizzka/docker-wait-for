FROM alpine:3.11

WORKDIR /opt
ENV PATH "$PATH:/opt"

RUN apk add --update --no-cache netcat-openbsd &&\
  wget https://raw.githubusercontent.com/eficode/wait-for/8d9b4446df0b71275ad1a1c68db0cc2bb6978228/wait-for &&\
  chmod +x wait-for

ENTRYPOINT ["wait-for"]

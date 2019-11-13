FROM alpine:3.10.3

RUN apk add --update --no-cache curl netcat-openbsd

WORKDIR /opt

ENV PATH "$PATH:/opt"

RUN curl --silent --fail --show-error --location --output ./wait-for https://raw.githubusercontent.com/eficode/wait-for/8d9b4446df0b71275ad1a1c68db0cc2bb6978228/wait-for
RUN chmod +x ./wait-for

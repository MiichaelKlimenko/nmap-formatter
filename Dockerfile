FROM golang:1.21.1-alpine

WORKDIR /src/
COPY . /src/

RUN apk add --update gcc musl-dev
RUN CGO_ENABLED=1 go build -o /bin/nmap-formatter

ENTRYPOINT ["/bin/nmap-formatter"]

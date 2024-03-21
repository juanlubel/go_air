FROM golang:1.22.0-bookworm

WORKDIR /go/src/

COPY go.mod go.mod

RUN curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s -- -b $(go env GOPATH)/bin

EXPOSE 8080

ENTRYPOINT ["air"]
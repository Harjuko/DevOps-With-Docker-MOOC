FROM golang:1.16-alpine
RUN apk add build-base
EXPOSE 8080
WORKDIR /go/src/app
COPY . .
RUN adduser -D appuser
RUN chown appuser .
USER appuser

RUN go build
RUN go test ./...
ENV REQUEST_ORIGIN=http://localhost:5000
CMD ./server
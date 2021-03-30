FROM golang:1.15



EXPOSE 8080
WORKDIR /go/src/app
COPY . .
RUN useradd -m appuser
RUN chown appuser .
USER appuser

RUN go build
RUN go test ./...
ENV REQUEST_ORIGIN=http://localhost:5000
CMD ./server
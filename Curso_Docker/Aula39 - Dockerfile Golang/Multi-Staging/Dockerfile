FROM golang:1.18.0-bullseye
WORKDIR /app
COPY app.go .
RUN go mod init main && \
    go build
EXPOSE 80
CMD ["./main"]
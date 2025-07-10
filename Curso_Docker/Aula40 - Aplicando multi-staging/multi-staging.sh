Multi-staging é ter duas imagens, uma pra build e uma imagem para a runtime.



DockerFile antigo:
________________________________
FROM golang:1.18.0-bullseye    |
WORKDIR /app                   |
COPY app.go .                  |
RUN go mod init main && \      |
    go build                   |
EXPOSE 80                      |
CMD ["./main"]                 |
_______________________________|




DockerFile novo:
______________________________________
From golang:1.18.0-bullseye AS builder
WORKDIR /app
COPY app.go .
RUN go mod init main && \
    go build

FROM scratch
EXPOSE 80
COPY --from=builder /app/main /go/main ( essa linha signfica que estou copiando o binário da imagem builder ( o workdir(/app) e o RUN (go mod init main)) para a imagem scratch no diretório /go/main)
CMD ["/go/main"]
______________________________________



1.docker buid -t golang:multi-staging .
2.docker run golang:multi-staging ( vai dar erro, o go build gera um binário, mas nao um unico binário, ele gera um binário e uma pasta com os arquivos de depedências, por isso o erro)

No dockerfile...

RUN go mod init main && \
    CG0_ENABLED=0 go build ( o CGO_ENABLED=0 desabilita a dependência de C, assim o go build gera um binário único, sem dependências externas)
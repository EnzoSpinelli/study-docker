docker pull golang:1.18.0-bullseye
docker images golang:1.18.0-bullseye
ls ( até achar o app.go )
docker run -v "$(pwd)":/app -w /app -it golang:1.18.0-bullseye sh ( $pwd vai montar o diretório atual para o /app , vai muda ro workdir para o /app e o -it vai entrar direto no terminal )
ls
go version
go mod ( que é o gerenciador de dependências do Go )
go mod init main
ls
cat go.mod
cat app.go ( tem q salvar o arquivo app.go do diretório atual )
go build
ls --colar ( setiver um main verde ele é o binário do Go )
./main ( executa o binário )



docker build -t golang:webserver .
docker run -d golang:webserver
docker logs (id do container )
docker ps
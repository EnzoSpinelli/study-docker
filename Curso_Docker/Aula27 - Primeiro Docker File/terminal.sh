1. docker pull node:versao ( para baixar a imagem do node)
2. docker run -it -w /app -v "$(pwd)/app.js":/app/app.js node:versao sh ( para executar o container)

-it : modo interativo
-w : define o diretório de trabalho dentro do container
-v : mapeia o diretório atual do host para o diretório dentro do container


Depois que já temos o Dockerfile...
3. docker build -t nodeapp:0.1 . ( para criar a imagem do dockerfile)

-t : define a tag da imagem


4. docker images | grep nodeapp ( para verificar se a imagem foi criada)
5. docker run nodeapp:0.1 ( para executar a imagem criada)
6. docker ps -a ( para verificar os containers em execução)
Sempre que criamos uma imagem em um diretório que contem mais de um arquivo Dockerfile, é necessário informar o nome do Dockerfile com a opção -f:

1. docker build -t python-healthcheck -f Dockerfile.python .
2. docker run python-healthcheck
3. docker ps
4. docker inspect (container_id)
5. curl -I (ipAdress:5000)
6. curl -I (ipAdress:5000/health -I)
7. watch docker ps
 
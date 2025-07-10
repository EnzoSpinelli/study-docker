Falando de Containers:

Por padrão os container estão preparados para rodar na porta 80.
A partir da imagem que baixamos (nginx), podemos criar um container.


1- docker container (lista os comandos disponíveis para containers)
2- docker container ls -a (lista os containers em execução)



Para rodar o container:
3- docker run nginx:(tag)


Para colocar o container em segundo plano:
4-docker run -d nginx:(tag)
5-docker ps (lista os containers em execução)
6-docker inspect (id) Para ver informações do container
7-docker (ip) Para ver configurações de rede do container, por´me, como o container está rodando na maquina local, usuários de fora não conseguiriam entrar via web pelo ip
8- curl (ip) 



Para exportar o ip
9-docker ps
10- docker stop (id)
11- docker run -d -p 8080:80 nginx(tag)
12- docker ps
13- (ip):8080


Para debugar
14- docker logs (id) -f (para ver os logs do container) 
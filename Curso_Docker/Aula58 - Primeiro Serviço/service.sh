Explorando um pouco das confg do node que criamos:
docker node --help


Um serviço é uma tarefa que roda em um ou mais nós do cluster. Podemos criar serviços para rodar containers de forma distribuída e escalável.
Para colocar um serviço para rodar no cluster, usamos o comando:
docker service --help
docker service create -d -p 8080:80 --name nginx-serviço --replicas 3 nginx:latest
docker service ls

Podemos tambem escalar o serviço para mais ou menos réplicas:
docker service scale nginx-serviço=10 
Isso faz com que o serviço tenha 10 réplicas rodando no cluster, o que significa que teremos 10 containers rodando com a imagem do nginx:latest.
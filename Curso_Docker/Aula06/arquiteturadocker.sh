O Docker é divido em 3 estruturas principais:
-CLIENT ( $docker ps; $docker pull; $docker run) - a linha de comando do Docker que envia comando para o docker host
-DOCKER HOST ( Docker Daemon, Images, Containers ) - quando damos um pull, por exemplo, ele envia o comando para o docker host, e ele quem fará isso, quando rodamos o ps, ele vai listar os Containers do host 
-REGISTRY ( nginx, cent0s, redis) - lugar onde a imagem vai ficar armazenada, o docker hub é um registry, mas podemos criar o nosso próprio registry, e ele pode ser privado ou público. 
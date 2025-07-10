docker system events --help ( Essa linha de código mostra a ajuda do comando events )

Exemplo:
for i in `seq 5`; do docker run -d nginx; done; docker stop `docker ps -q`   ( Essa linha de código signfica que você está criando 5 containers do nginx e logo em seguida parando todos eles )

docker system events --filter event=die --since 1h
 
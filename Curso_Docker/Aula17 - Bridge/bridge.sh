Por padrão se dermos um : ip a no dockerhost, teremos todas as interfaces de rede do docker, incluindo as de rede bridge, host e none.

Para colocar um container em uma rede bridge, host ou none, usamos o comando docker run com a opção --network.



1. docker network ( comandos )
2. docker network ls ( lista as redes )
3. docker network create demo ( cria uma rede )
4. docker network inspect demo ( inspeciona a rede )
5. docker network connect demo container1 ( conecta o container1 na rede demo )
6. docker network disconnect demo container1 ( desconecta o container1 da rede demo )
7. docker network connect --help ( ajuda sobre o comando connect )
8. docker network connect --alias=nginx demo container1 ( conecta o container1 na rede demo com o alias nginx )


Criando outro container... utilizando o alphine como exemplo:

1. docker run --network demo -it alphine sh ( cria um container na rede demo )
2. docker ps
3. docker inspect (id)
4. apk add curl ( instala o curl no container )
5. curl nginx ( tenta acessar o nginx no container1 )
 
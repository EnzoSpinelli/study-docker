Continuando com outros comandos de containers...

Com o container on...


1- docker container -h  
Comando attach -- vai amarrar o SDIN, SDOUT e SDERR do container ao terminal, ou seja, o que o container está fazendo, vai aparecer no terminal.
Comando top -- vai mostrar os processos que estão rodando dentro do container.


2- docker top (id)
3- docker attach (id)
4- curl -I (ip)



----------------------------
Comando exec -- vai executar um comando dentro do container, ou seja, o container já está rodando e você quer executar um comando dentro dele.
Comando pause -- vai pausar o container, ou seja, ele vai parar de rodar, mas não vai ser removido.
Comando unpause -- vai despausar o container, ou seja, ele vai voltar a rodar.
Comando rm -- vai remover o container, ou seja, ele vai ser deletado.
Comando prune -- vai remover os containers que não estão mais em uso, ou seja, ele vai deletar os containers que não estão rodando.


1- docker exec --help
2- docker exec (id) (comando) ; exemplo: docker exec (id) ls/

Para debugar dentro do container:
3- docker exec -it (id) /bin/bash ou sh ou shell  

Para instalar algo
4- apk add curl 





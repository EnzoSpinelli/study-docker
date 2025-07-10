Oq é um helth check ? Basicamente é um comando que verifica se o container está rodando corretamente, se ele está respondendo a requisições, etc.
Seria requisições http para testar o serviço e verificar seu funcionamento.

Comando mais comum de health check é o curl, que faz requisições http para o serviço e verifica se ele está respondendo corretamente.


1. curl --help
Comandos importantes do curl:
- -f: Se o servidor retornar um erro 4xx ou 5xx, o curl irá retornar um erro.
- -s: Modo silencioso, não exibe mensagens de progresso.
- -o: Salva a saída em um arquivo.

2. Se dermos um history no terminal, aparecerá comandos que já foram executados, e podemos ver o comando que foi executado para verificar se o curl está instalado.

3. docker run -e PORT=3000 nodeapp:0.1

4. docker inspect (id container) ----> Vamos em IPAdress para pegar o IPAdress
5. curl ip:3000 -I (iSSO FAZ UMA REQUISIÇÃO HTTP PARA O SERVIÇO E VERIFICA SE ELE ESTÁ RESPONDENDO CORRETAMENTE)

---------------------------------------------------------------
Dockerfile:

FROM node:18-alpine

LABEL maintainer="Enzo"

HEALTHCHECK CMD curl -sf http://localhost:3000/ || exit 1 ( isso verifica se o serviço está respondendo corretamente, se não estiver, o container será marcado como unhealthy )
VOLUME ["/var/nodeapp"] ( dessa forma o docker irá criar o volume automaticamente, e não será necessário criar o volume manualmente)

RUN adduser -h /var/nodeapp -s /bin/bash -D nodeapp && apk add curl ( adicionamos o apk add curl para instalar o curl, que é necessário para o health check funcionar corretamente )

WORKDIR /var/nodeapp

COPY app.js .
RUN chown nodeapp:nodeapp app.js

EXPOSE 3000

ARG VERSION
ENV VERSION=${VERSION:-latest}

CMD ["node", "app.js"] 

------------------------------------------------------------------


6. docker build -t nodeapp:0.1
7. docker run -e PORT=3000 nodeapp:0.1
8. watch docker ps ( se o health check estiver funcionando corretamente, o status do container será "healthy" ou "unhealthy" se não estiver funcionando corretamente )

Dará erro... para debugar podemos fazer o seguinte:
9. docker ps
10. docker inspect (id container)
E scrollamos para cima até chegar nas saidas que teve no helth check, nesse caso dará o erro que o curl nao foi instalado... para resolvermos, colocaremos no DockerFile, dentro do RUN, o comando para instalar o curl
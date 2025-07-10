Podemos já declarar no dockerfile que um diretório terá um volume, e assim o docker irá criar esse volume automaticamente, e não será necessário criar o volume manualmente.


Dockerfile:

FROM node:18-alpine

LABEL maintainer="teste"
VOLUME ["/var/nodeapp"] ( dessa forma o docker irá criar o volume automaticamente, e não será necessário criar o volume manualmente)

RUN adduser -h /var/nodeapp -s /bin/bash -D nodeapp

WORKDIR /var/nodeapp

COPY app.js .
RUN chown nodeapp:nodeapp app.js

EXPOSE 3000

ARG VERSION
ENV VERSION=${VERSION:-latest}

CMD ["node", "app.js"] 

------------------------------------------------------------------


1. docker build -t nodeapp:0.1 
2. docker run -d -e PORT=3000 nodeapp:0.1
3. docker ps ( pega o ID incurtado )
4. Explorando os volumes ( Mounts ) do container, veremos que terá um montado no /var/nodeapp, que é o diretório que declaramos no dockerfile como volume.


As camadas de cache, importa na sequencia de ordens do Dockerfile! é necessário seguir uma lógica;


Por exemplo;...

Dockerfile:
COPY app.js 
USER nodeapp
RUN chown nodeapp:nodeapp app.js

EXPOSE 3000

ARG VERSION
ENV VERSION=${VERSION:-latest}

CMD ["node", "app.js"]

------------------------------------

Isso não irá funcionar, pois estamos entrando com o usuário nodeapp, e o comando RUN chown nodeapp:nodeapp app.js não irá funcionar, pois o usuário nodeapp não tem permissão para executar o comando chown.

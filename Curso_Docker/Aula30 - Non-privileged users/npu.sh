Rodar o container com um usuário não privilegiado... signfica que o usuário não será o root, e sim um usuário criado dentro do container.

Para criar um usuário no terminal :
1. useradd --help ou adduser --help (para ver as opções de criação de usuário)
2. useradd -m -s /bin/bash -d /var/teste -u 1000 nodeuser ( o -s signfica o shell que o usuário irá utilizar, o -d signfica que será criado o /var/teste,  o -m significa que será criado um diretório home para o usuário, e o -u é o id do usuário, que nesse caso será 1000)
ou
3. adduser -h /var/teste -s /bin/bash  -d teste -nome nodeuser (o -h é o home do usuário, o -s é o shell, e o -d é o diretório home do usuário)


--------------------------------------------
Dentro do Dockerfile:

.
.
.

RUN adduser -h /var/nodeapp -s /bin/bash -D nodeapp

WORKDIR /var/nodeapp

COPY app.js .
RUN chown nodeapp:nodeapp app.js ( isso fará com que o usuário nodeapp seja o dono do arquivo app.js)

USER nodeapp
CMD ["node", "app.js"]


A inclusão do eun e do user foi necessária para que o usuário nodeapp seja o dono do arquivo app.js, e assim o container não rode como root, mas sim como um usuário não privilegiado.
---------------------------------------------

4. docker build -t nodeapp:0.1 .
5. docker run -it nodeapp:0.1
6. ls -l



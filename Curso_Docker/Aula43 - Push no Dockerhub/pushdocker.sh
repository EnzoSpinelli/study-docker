1. docker login
2. git clone (repo) ( para baixar o projeto )
3. cd <diretorio_do_projeto>
4. git rev-parse --short HEAD > ( que signfica pegar o hash do commit atual )
5. docker tag taggeando:latest <seu_usuario_dockerhub>/<nome do repo no dockerhub>:tag-HASH ( onde HASH é o hash do commit atual )
6. docker images <seu_usuario_dockerhub>/<nome do repo no dockerhub>:tag-HASH ( para verificar se a tag foi criada corretamente )
7. docker push <seu_usuario_dockerhub>/<nome do repo no dockerhub>:tag-HASH ( para fazer o push da imagem para o Docker Hub )

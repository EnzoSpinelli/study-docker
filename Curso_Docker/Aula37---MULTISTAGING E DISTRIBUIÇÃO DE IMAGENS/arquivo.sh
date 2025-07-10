Formas de formar um dockerfile e passar para o docker;

1. docker build
USAGE: docker build [OPTIONS] PATH | URL | -

" - " é usado para ler o Dockerfile do stdin, ou seja, da entrada padrão.
" url " é usado para ler o Dockerfile de uma URL.

2. docker build -t nginx:stdin - <<EOF ( oq isso faz é ler o dockerfile do stdin e criar a imagem com o nome nginx:stdin, e o EOF é usado para delimitar o início e o fim do conteúdo do Dockerfile)


Usando a URL para pegar o dockerfile no github
3. <git url>#<ref>;<directory> ( O git url sendo o endereço do repositório git, o ref sendo a branch ou tag, e o directory sendo o caminho do diretório onde está o Dockerfile)
4. Exemplo: docker build -t flask:stdin https://github.com/enzospinelli/Curso_Docker.git#main;Curso_Docker/Aula37---MULTISTAGING
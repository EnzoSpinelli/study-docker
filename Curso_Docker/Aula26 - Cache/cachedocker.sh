Como funciona o cache do docker? 

# Docker utiliza cache para acelerar o processo de build de imagens.
# Cada comando no Dockerfile cria uma camada de cache.
# Se um comando não mudou, o Docker reutiliza a camada cacheada.
# Isso reduz o tempo de build, pois não é necessário executar novamente comandos que não mudaram.
# Exemplo de Dockerfile
FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://get.docker.com/ | sh
# Se o comando acima não mudou, o Docker reutiliza a camada cacheada.
# Se o comando mudou, o Docker executa novamente e cria uma nova camada.
# Para forçar o Docker a não usar o cache, use a opção --no-cache.
# Exemplo de comando para build sem cache
docker build --no-cache -t minha-imagem:latest .
# Para ver o cache utilizado, use o comando docker history
docker history minha-imagem:latest
# O comando acima mostra as camadas da imagem e o tamanho de cada uma.
# Para limpar o cache, use o comando docker builder prune
# O comando acima remove todas as camadas de cache não utilizadas.
# Para ver o cache utilizado, use o comando docker builder ls
# O comando acima mostra as camadas de cache e o tamanho de cada uma.
# Para remover uma camada de cache específica, use o comando docker builder rm <ID>
# O comando acima remove a camada de cache especificada pelo ID.


Cada comando do dockerfile é uma camada, exemplo:

Dockerfile
__________________________________                          1. A ordem importa
From python -- 1 camada          |                          2. Cuidado com "wildcard" no COPY
Workdir /app -- 2 camada         |
Copy app.py -- 3 camada          |   Se modificarmos apenas o run, o copy, workdir e o from não serão executados novamente.
run apk add -- 4 camada          |
env envi.teste -- 5 camada       |
cmd python3 app.py -- 6 camada   |
_________________________________|
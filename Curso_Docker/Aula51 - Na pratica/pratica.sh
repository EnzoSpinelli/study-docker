O DockerCompose é praticamente uma CLI, e precisa de um arquivo yaml no diretório atual para funcionar, então vamos criar um arquivo docker-compose.yml com o seguinte conteúdo:

1. Digitar no google: docker compose reference

2. docker --version
3. Depois de criar o docker-compose, execute o comando:
   
   docker-compose up -d

   docker-compose down



Alguns comandos úteis do Docker Compose:
# docker-compose up -d = que signfica "detached mode", ou seja, executa os containers em segundo plano.
# docker-compose down = para parar e remover os containers, redes e volumes criados pelo docker-compose up.
# docker-compose ps = lista os containers em execução.
# docker-compose logs = exibe os logs dos containers.
# docker-compose exec <serviço> <comando> = executa um comando em um container em execução.
# docker-compose build = constrói ou reconstrói os serviços definidos no docker-compose.yml.
# docker-compose pull = baixa as imagens dos serviços definidos no docker-compose.yml.
# docker-compose push = envia as imagens dos serviços para um registro remoto.
# docker-compose config  = valida e exibe a configuração do docker-compose.yml.
# docker-compose restart = reinicia os serviços definidos no docker-compose.yml.
# docker-compose scale <serviço>=<número> = escala o número de instâncias de um serviço.
# docker-compose run <serviço> <comando> = executa um comando em um novo container baseado no serviço definido no docker-compose.yml.
# docker-compose rm = remove os containers parados.


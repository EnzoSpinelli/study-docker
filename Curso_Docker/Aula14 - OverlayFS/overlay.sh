Sistema de arquivos OverlayFS:

# OverlayFS é um sistema de arquivos que permite combinar dois sistemas de arquivos em um único ponto de montagem.
# Ele é frequentemente usado em contêineres para criar uma camada de leitura/gravação sobre uma camada de somente leitura.


Cada camada é um diretório dentro de /var/lib/docker/overlay
 

 ------------



OverlayFS na prática....

1. docker images | grep (imagem) nginx
2. docker inspect (id da imagem)
3. Dentro de GraphDriver, você verá a camada de leitura/gravação e as camadas de somente leitura.
4. docker ps
5. docker inspect (id do container)
6. sed 's/:\n/g' << "/var/lib/docker........ ( isso fará uma divisão de substituição em todas as linhas após o : )
7. cd /var/lib/docker/overlay/..../diff
8. ls
9. ls usr/sbin
Precisa ter o docker em todas as máquinas. ( No vídeo ele usa o Vagrant para automatizar o install do docker)
No vídeo, ele faz tudo isso usando o Tilix terminal.

Cria um diretório ( Swarm )
Cria um arquivo chaamdo Vagrantfile

############

No terminal, vai no diretório Swarm e da um Vagrant up
# Isso vai criar 3 máquinas virtuais ( Manager, Worker1 e Worker2) com o docker instalado e configurado.

Para acessar direto pelo Vagrant, use o comando:
vagrant ssh swarm-1 # (ou swarm-2, swarm-3, os quais nomeamos no Vagrantfile)

#############

Para inciar um cluster, escolheremos uma máquina para ser o manager e as outras para serem os workers.
Dando o comando:
docker swarm init --help 
# Podemos ver as opções do comando, mas o mais importante é o --advertise-addr, que é o IP da máquina que será o manager.
# Esse IP é usado pelos workers para se conectarem ao manager.
Então damos o comando ( IP a) e pegamos o IP da máquina que será o manager:
docker swarm init --advertise-addr (ip)
Ao darmos esse comando, o Docker Swarm cria um cluster e nos dá um comando para adicionar os workers ao cluster.
# O comando é algo como:
docker swarm join --token SWMTKN-1-0x0x0x0xx0x0x0x0x0x0x0x0x0x0x0x0x0x0x0x0x0x0x0x0x0x0x (ip do manager):2377
# Esse comando é usado pelos workers para se conectarem ao manager e se tornarem parte do cluster.

################

Para vermos os nós do cluster, usamos o comando:
docker node --help
docker node ls
# Esse comando nos mostra os nós do cluster, incluindo o manager e os workers.
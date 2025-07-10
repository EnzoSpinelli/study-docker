docker network create --help (comando para criar uma rede)

--attachable          colocar a rede como "attachable", ou seja, permitir que containers sejam conectados a ela após a criação
--driver string       especificar o driver de rede a ser usado (bridge, overlay, macvlan, etc.)
--internal           criar uma rede interna, que não pode ser acessada por containers externos
--gateway string      especificar o gateway da rede
--ip-range string    especificar o intervalo de IPs da rede
--subnet string       especificar a sub-rede da rede
--opt map           especificar opções adicionais para a rede, como o driver de rede






Criando a rede

1. docker network create --attachable --driver bridge --subnet 10.53.0.0/24 --gateway 10.53.0.1 --ip-range 10.53.0.0./28 --internal internal-demo
2. docker inspect (id)


Criando container

1. docker run --network internal-demo -d ngnix
2. docker inspect (ip do container)

Criando outro container
1. docker run --network internal-demo --ip 10.53.0.10 -it alphine sh (-it é para criar outro terminal)


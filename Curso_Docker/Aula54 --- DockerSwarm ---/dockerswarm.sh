DockerSwarm é um orquestrador de containers que permite gerenciar um cluster de Docker hosts, facilitando a implantação, o gerenciamento e a escalabilidade de aplicações em contêineres.


Rodar container é mole, o problema é escalar (receber mais requisições) isso...

_________________
Empresa          |
200 microserviços| -----> 40.000 containers....
_________________|         Para rodarmos 40.000 containers, precisamos de um orquestrador de containers.



vantagens:

1) Se um Node morrer ( ou seja, uma máquina do meu cluster), workload é migrado
2) Escala a quantidade de containers que eu quero
3) Gerenciamento centralizado
4) Self-healing (se um container morrer, ele é reiniciado automaticamente)
5) Load balancing (distribuição de carga entre containers)
Quando um container morre, todos os dados que estavam dentro dele são perdidos. Para evitar isso, podemos usar volumes.


O container foi feito para morrer, mas os volumes não.

C1 (Container 1) --> Container é parado --> Dados da camada se foram --> C2 (Container 2)
       
            Ou seja, o storage do container é VOLÁTIL, não é persistente.



 

 Bind Mounting 
    - É um tipo de volume que mapeia um diretório do host para um diretório do container.
    - Permite que o container acesse arquivos do sistema de arquivos do host.
    - Útil para desenvolvimento, onde você pode querer editar arquivos no host e ver as mudanças refletidas no container.

    Container                                       Docker Host
    /app <-----------------------------------------> /home/enzo/app
    - O diretório /app dentro do container é mapeado para o diretório /home/enzo/app no host.


Volume   
    - É um tipo de armazenamento persistente que é gerenciado pelo Docker.
    - Os volumes são armazenados em um diretório específico no host (/var/lib/docker/volumes).
    - Permite que os dados sejam compartilhados entre containers e persistam mesmo após a remoção do container.

    Container                                       Docker Host
    /var/logs/nginx <-----------------------------> /var/lib/docker/volumes/<volume-id>

    - O diretório /var dentro do container é mapeado para um volume gerenciado pelo Docker no host. Diretório do Host é escolhido de forma aleatória pelo Docker.



Distributed Volume
    - É um tipo de volume que permite que os dados sejam compartilhados entre containers em diferentes hosts.
    - Útil para aplicações distribuídas que precisam acessar os mesmos dados em diferentes máquinas.


     Node 01                      Node 02                   Node 03
      c1        <--overlay-->       c2     <--overlay-->      c3
     docker                       docker                    docker                NFS
       |                            |                          |
        ----------------->Storage Compartilhado<----------------
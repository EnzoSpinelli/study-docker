Docker Networking

"Bridge Network" -- Faz dois containers se conversarem, conectando em duas pontas por meio do IP, sem precisar de rota

       *DockerHost*


(App)                   (DB)
C1 ( Container1)       C2 (Container2) 
 |                     |
eth0                  eth0
 |                     |
veth1                veth2
 |                     |
 |_______bridge0_______|
           |
           |
         eth0



"Host Network" -- Faz o container usar a rede do host, compartilhando o mesmo IP
       *DockerHost*
(App)                   (DB)
C1 ( Container1)       C2 (Container2) 
 |                     |
eth0                  eth0      
 |                     |
veth1                veth2
 |                     |
 |_____________________|
           |
           |
         eth0


"None Network" -- Faz o container não ter rede, não conseguindo se comunicar com nada
       *DockerHost*
(App)                   (DB)









Quando falamos de DockerSwarm, temos mais dois tipos de redes:

"Overlay Network" -- Faz containers de hosts diferentes se comunicarem, criando uma rede virtual sobre a rede física
       *DockerHost1*                *DockerHost2*
(App)                   (DB)
C1 ( Container1)       C2 (Container2) 
 |                     | 
eth0                  eth0
 |                     |
veth1                veth2
 |                     |
 |_______overlay0_______| 
           |
           |
         eth0



"Macvlan Network" -- Faz o container ter um IP próprio, como se fosse uma máquina física, podendo se comunicar com a rede externa
       *DockerHost*
(App)                   (DB)
C1 ( Container1)       C2 (Container2) 
 |                     |
eth0                  eth0
 |                     |
veth1                veth2
 |                     |
 |_______macvlan0_______|
           |
           |
         eth0
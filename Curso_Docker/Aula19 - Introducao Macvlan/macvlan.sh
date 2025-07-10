O Macvlan cada conteiner q vc criar, ele cria um mac address diferente, e conseguimos dar ip's diferentes para cada conteiner, e assim conseguimos acessar os conteiners de fora da rede e restringir em VLAN





           Interface Física
    

    ________________________________
    eth0                            |
                         macvlan    |
                       ___________  |                                    _________________
    etho.100          | c1      c2| |                                   |eth0            |
                       -----------  |                                    -----------------            
   _________________________________|                                    Client (Vlan=100)

O docker compose serve para orquestrar containers, ou seja, para gerenciar vários containers de uma vez só. Ele permite que você defina e execute aplicativos multi-container de forma fácil e eficiente.

O Docker compose é utilizado para compor a aplicação




Docker COmpose

Oq eu preciso para subir minha aplicação?
Containers, imagens, volumes, variaveis, rede, ips, dependencias(ou seja, a dependencia entre as frentes da aplicação, por exemplo, a dependencia de antes de rodar o backend, precisa que o banco esteja ligado)....

 ___________________
|Docker-compose.yaml| ----> FrontEnd, Backend, Banco de Dados, etc
|___________________|                               |
                                                  Precisa de volumes

O docker compose é um arquivo de configuração que define como os containers devem ser construídos e interagem entre si. Ele permite que você especifique os serviços, redes e volumes necessários para a sua aplicação.



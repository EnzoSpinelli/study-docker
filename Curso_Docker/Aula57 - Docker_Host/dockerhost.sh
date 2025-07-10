Para acessarmos o cluster de uma máquina externa:
Precisamos do socket do manager, que é o IP da máquina que será o manager.
# Então, vamos na máquina externa e damos o comando "Ping (ip)" oara ver se conecta ao manager
# Para ver se a porta 2377 está aberta, usamos o comando: nc -v (ip) 2377
Para exportar o socket do manager, primeiro precisamos achar o docker.service com o comando:
sudo find / -name docker.service -type f
Damos o comando "sudo vim (caminho)"
Na linha ExecStart, adicionamos : -H fd:// -H tcp://0.0.0.0:2375 --container....
Para reinciar o daemon: sudo systemctl daemon-reload
E depois reiniciamos o docker: sudo systemctl restart docker
E damos novamente o comando na maquina externa: nc -v (ip) 2377

Para acessar o docker_host:
DOCKER_HOST=(ip:2375) docker node ls
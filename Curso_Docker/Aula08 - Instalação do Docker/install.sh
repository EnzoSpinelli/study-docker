Em sistema Linux:

1. Docker installation no google ( https://docs.docker.com/engine/install/ubuntu/)
2. sudo apt-get remove docker docker-engine docker.io containerd runc ( Desinstalar versões anteriores)
3. sudo apt-get update
4. sudo apt-get install\
ca-certificates \
curl \
gnupg \
lsb-release
5-curl -fsSL https://download.docker.com/linux/ubuntu(so)/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
6- echo \ "deb [arch=amd64,arm64,ppc64el] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
7- sudo apt-get update
8- sudo apt-get install docker-ce docker-ce-cli containerd.io


9- systemctl status docker
10- sudo systemctl start docker
11- sudo systemctl enable docker.socket
12- sudo systemctl enable docker.service


13- sudo docker images
14- getent group docker
15- sudo usermod -a -G docker $USER
16- getent group docker
17- newgrp docker
18- id
19- docker images ( sem o sudo )
20- sudo reebot


21- systemctl docker status
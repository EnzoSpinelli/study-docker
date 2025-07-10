Olhando as imagens...

Se dermos apenas um "docker" na linha de comando, ele nos mostrará todos os comandos disponíveis.
Se quisermos saber mais sobre algum comando, podemos usar "docker <comando> --help".

Para listar as imanges:
docker list ls

Mas... para simplificar, podemos usar o comando "docker images", que seria o comando mais utilizado para listar as imagens.



Para baixaroms uma imagem:

1- docker images | grep nginx
2- docker pull nginx:(tag)
3- docker image inspect nginx:(tag)
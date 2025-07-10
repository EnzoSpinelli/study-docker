Binding mount significa que você pode montar um diretório do host dentro de um contêiner Docker. Isso é útil para compartilhar arquivos entre o host e o contêiner, ou para persistir dados gerados pelo contêiner.

1. cd /tmp
2. mkdir target
3. docker run -it -w /app --mount type=bind,source=$(pwd)/target,target=/app alpine sh ( oq faz: roda o alpine, entra no /app e monta o /tmp/target dentro do /app, fazendo com que o /app seja o mesmo que o /tmp/target do host, assim, compartilhando arquivos entre o host e o contêiner)

----
outra forma:

1. docker run -it -w /app -v /tmp/target:/app alpine sh





------
Na prática...


1. docker pull amazon/aws-cli
2. docker run -it amazon/aws-cli sh ( isso da erro, pois o entrypoint do aws-cli é o aws, e não o sh)
3. docker run --entrypoint "" -it amazon/aws-cli sh (isso funciona, pois estamos sobrescrevendo o entrypoint do aws-cli, e entrando no sh)
4. aws s3 ls
5. cd .aws/
6. ls ( para ver o credentions )

7. docker run --entrypoint "" -it -v $HOME/.aws:/root/.aws amazon/aws-cli sh (isso monta o diretório .aws do host dentro do contêiner, permitindo que o contêiner acesse as credenciais da AWS)

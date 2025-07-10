docker build -t taggeando:1.0 . ( o nome da imagem é taggeando e a tag é 1.0 )
docker images taggeando:1.0 ( vai ter o IMAGE ID )
docker tag taggeando:1.0 taggeando:latest ( cria uma nova tag para a mesma imagem )
docker images taggeando:latest ( vai ter o mesmo IMAGE ID da tag anterior )
docker rmi taggeando:1.0 ( remove a tag 1.0 )



Sempre que for dar push para qualquer registry, é necessário alterar a tag para o formato que o registry aceita, por exemplo...
Dando um "Aws ECR how to push" no google, aparece como fazer o push para o ECR da AWS, que é o seguinte:
docker tag taggeando:latest 123456789012.dkr.ecr.us-east-1.amazonaws.com/taggeando:latest ( ou seja, devemos renomear a tag para o formato do ECR )
docker push 123456789012.dkr.ecr.us-east-1.amazonaws.com/taggeando:latest
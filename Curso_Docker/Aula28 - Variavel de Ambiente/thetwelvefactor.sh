the twelve factor : é um conjunto de princípios para construir aplicações SaaS que são escaláveis, portáveis e fáceis de manter. Esses princípios foram definidos por Heroku e são amplamente adotados na indústria de software.

A regra III. Config : é uma das doze regras e enfatiza a importância de armazenar a configuração da aplicação em variáveis de ambiente. Isso permite que a aplicação seja facilmente configurada para diferentes ambientes (desenvolvimento, teste, produção) sem a necessidade de modificar o código-fonte.



Criando uma variável de ambiente no app.js:

em : const port = 3000
vira : const port = process.env.PORT;


1.docker build -t nodeapp:0.1 .
2.docker run -e PORT=5000 nodeapp:0.1 ( Aqui no momento de executar o container, passamos a variável de ambiente PORT com o valor 3000, o -e signfica que estamos injetando uma variável de ambiente no container)	

Utilizando o docker build com argumentos de build;


Dentro do app.js:

const port = process.env.PORT;
const version = process.env.VERSION;

.
.
.

console.log(`Server running at http://${hostname}:${port}/ and version ${version}`);

-----------------------------------------------------------------------------------------



Dentro do Dockerfile:

.
.
.
COPY app.js

EXPOSE 3000

ARG VERSION
ENV VERSION=${VERSION:-1.0.0}

.
.
.


Signfica que na hora do build, vamos passar o parametro de version, se não for passado o argumento VERSION, o valor padrão será 1.0.0

---------------------------------------------------------------------------------------------



1. docker build --build-arg VERSION=2.0.0 -t nodeapp:0.1 .
2. docker run -e PORT=3000 nodeapp:0.1

Com isso, o resultado será "Server running at http://localhost:3000/ and version 2.0.0"



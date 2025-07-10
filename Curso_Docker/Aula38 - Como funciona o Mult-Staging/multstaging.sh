O MultStaging é uma técnica que permite criar imagens Docker mais eficientes, dividindo o processo de construção em várias etapas. Isso ajuda a reduzir o tamanho da imagem final e melhora a organização do Dockerfile.

Teremos dois estágios de Build dentro do Dockerfile, separando o step de Build e o de RUN, o de Build gerando um artefato que será copiado para o segundo estágio, onde será executado no RUN.




Oq uma aplicação em GOLANG precisa para rodar ?

                              
                                        binário
________          ________              ______
|App.go|--------> |Build  | ---------> | app  |
|______|          |_______|            |______|



Então ao invés de usarmos uma imagem para tudo, separamos em BUILD e RUNTIME, onde o Build é responsável por compilar o código e gerar o binário, e o Runtime é responsável por executar o binário.


--------------------------------------------------------------------

Como criar um DockerFile multistaging? Aplicamos para linguagens compiladas como Go, Rust, C, C++ e outras.


Dockerfile
FROM ..... (Golang-debian (Imagem grande)) as build
RUN ...... (Go build) --> app
COPY .....

FROM ..... (scratch (Imagem pequena para rodar binários))
COPY ..... --from = builder ( signfica que estamos copiando o app do estágio de build)
CMD ...... Executa o app

-------------------------------------------------------------------






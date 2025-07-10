Open Container Initiative (OCI) - é um projeto que visa criar padrões abertos para containers, e o Docker é um dos projetos que fazem parte do OCI


OCI -----> Runtime Specification ( como deve ser feito para rodar um container ) ---> Docker 
|                                                                                     cri-o 
|                                                                                     containerd
|
|--------> Image Specification ( como deve ser feito para criar uma imagem ) ---> Docker 
                                                                                  Kaniko
                                                                                  Buildah                                    



                                  ISSO QUER DIZER QUE TODO MUNDO SE COMUNICA

                                  
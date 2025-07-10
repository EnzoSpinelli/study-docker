Como uma empresa utilizar Docker ?

Quando estamos construindo uma aplicação, ela está primeiro na fase de desenvolvimento
Para um desenvolvedor que está fazendo 
-Backend ( Ruby )
-Frontend ( React )
-DBA (PostgreSQL)

Ele precisa fazer um ambiente de teste com os 3 princípios, e o Docker ajuda nisso, podendo criar "blocos" isolados para cada um e uma rede(newtwork) maior englobando os blocos para simular o ambiente da empresa ( $Docker-Compose up)




Para chegar em produção ( Continuous Integration - CI )

Dev -> GIT -> CI -> Testes -> build da imagem -> push p/ registry ( servidor remoto que armazenará as imagens, ex NEXUS ) -> deploy 
        |     |                    |                    |                                                                      |
       SCM    Gitlab            docker build        docker push                                                               K8S ( no kubernet, chamamos os containers de pods)
                                                                                                                            /    \
                                                                                   Registry ( em forma de Container) --> Node1     Node2 <-- Registry ( em forma de Container)
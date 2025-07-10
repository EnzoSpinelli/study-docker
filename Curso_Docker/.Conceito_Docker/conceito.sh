Oq é Docker ?
Princípio do Docker - Imutabilidade
Docker é uma ferramenta para gerenciar o ciclo de vida de um container, então a gente pode desde criar a imagem, criar um container a partir da imagem, podemos orquestrar vários containers para desenvolvimento, etc

O Conceito de Container é de rodar a aplicação de forma isolada




                                        Diferença entre container e máquina virtual


                Máquina Virutal                                                      Container
---------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------
app ( apenas um app)                                     |App/App/app ( podemos rodar diversas replicas da aplicação, e todos os containers, utilização o Kernel do OS)
OS (muitos dados desnecessários)                         |Container Engine ( é o software que vai permitir instalar o container, o qual orquestra os "pedaços" do linux para criar o container)
hypervisor ( virtualizador - criação de maquina virtual) |OS ( Linux )
hardware (servidor físico)                               |Hardware ( servidores )
---------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------

                                       Vantagens de utilizar o Container
                                       *Otimização de recursos ( só tem oq precisa )
                                       *Empacotamento ( tudo que precisa para rodar a aplicação, já vem dentro do container, assim podendo rodar em qualquer lugar )
                                       *Imutabilidade ( criamos uma imagem, e a partir dela criamos o container, e o container não pode ser alterado)
                                       *Deploy Facilitado ( o container é leve, e podemos criar vários containers em cima da mesma imagem, assim facilitando o deploy)







Pq usar Docker?

A aplicação vai utilizar variáveis, e dentro delas podem conter secrets, todas as bibliotecas que a aplicação utiliza, o tuning que seria mudar o kernel do linux para que tenha o melhor desempenho
e arquivos de configuração, por exemplo um arquivo .yaml;

Para gerenciar tudo isso dentro de uma VM, é muito complexo, e dai entra o Docker, que iremos criar uma imagem contento as variaveis, libs, tuning, configuração e se torna imutável para ser usado
E, a partir da imagem, criamos o container, o qual tem permissões de write, enquanto a imagem é only-read



Podemos distribuir e deployar em qualquer lugar ( que tenha um Container Engine instalado)

Imagem Docker (App) ----------------> EC2 com Docker
                                      ECS
                                      eks
                                      ON-Premises ( oq roda dentro da sua infra, sem ser em cloud )







CTRL ALT D  para abrir outra janela no terminal
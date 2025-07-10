chroot é uma ferramenta que permite alterar a raiz do sistema de arquivos para um diretório específico, assim, podendo fazer ambientes isolados
# Isso significa que, quando você executa um comando dentro do ambiente chroot, ele só pode ver e acessar os arquivos e diretórios dentro desse novo diretório raiz.


Passo a passo:
- mkdir (diretorio)
- ls / ( vams mudar isso)
- sudo chroot (diretorio) bash
- ldd /bin/bash (verifica as libs ) -- vamos colocar essas libs dentro do diretorio q criamos
- cd (diretorio)
- mkdir bin -- o bash
- mkdir lib -- biblioteca
- mkdir lib64 --- biblioteca
- sudo cp (lib), ex: /lib/x86_64-linux-gnu/libtinfo.so.6 lib/ ( esse lib/ é onde vamos jogar a biblioteca)
- sudo cp /bin/bash bin
- ls **
- sudo chroot (diretorio) bash

Para instalar o ps
- cd (diretorio)
- Which ps
- ldd /usr/bin/ps

Para clonar as libs via automação
- ldd /usr/bin/ps | cut -d " " - f 3 ( esse " " é o separador e o -f 3 é a coluna que queremos)
- for i in $(ldd /usr/bi/ps | cut -d " " -f 3); do cp $i lib/; done ( em cada uma das saidas do comando, vai para i e copia o i dentro de lib)

Repete o mesmo processo pro ls e o mount

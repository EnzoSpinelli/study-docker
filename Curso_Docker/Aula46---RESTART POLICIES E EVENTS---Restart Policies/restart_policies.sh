O que é um restart policy?
É uma política de reinício que define como um container deve ser reiniciado após falhas ou paradas. As políticas de reinício são configuradas no momento da criação do container e podem ser ajustadas posteriormente. Elas ajudam a garantir que os containers sejam reiniciados automaticamente em caso de falhas, evitando a necessidade de intervenção manual.


One failure policy
A política de reinício "on-failure" é usada para reiniciar um container apenas se ele falhar. Você pode especificar um número máximo de tentativas de reinício. Se o container falhar mais vezes do que o número especificado, ele não será reiniciado novamente.

Always policy
A política de reinício "always" é usada para garantir que o container seja sempre reiniciado, independentemente de como ele foi parado. Isso é útil para containers que precisam estar sempre em execução   e não devem ser interrompidos, como serviços críticos.

Unless stopped policy
A política de reinício "unless-stopped" é semelhante à política "always", mas permite que o container seja parado manualmente. Se o container for parado manualmente, ele não será reiniciado automaticamente. No entanto, se o container for parado devido a uma falha ou reinicialização do Docker, ele será reiniciado automaticamente.


_______________________________

docker run -d --restart on-failure nome_container:tag
Usamos isso para isolar os processos utilizando o namespace usando o unshare

sudo unshare -p -f --mount-proc chroot .

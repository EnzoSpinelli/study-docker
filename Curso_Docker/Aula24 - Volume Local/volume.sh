Criando manualmente o volume...

1. docker volume create nginx-html
2. docker volume ls
3. docker run -d (deixar em segundo plano) --mount type=volume,source-nginx-html(é o nome do volume),target=/usr/share/nginx/html nginx
4. docker ps
5. docker exec -it <container_id> sh
6. cd /usr/share/nginx/html
7. ls
8. Em Mounts você verá o volume montado
9. cd /var/lib/docker/volumes/ngninx-html
10. ls
11. cd _data
12. ls


Criando de outra forma...

13. docker run -d -v ngninx-html:/usr/share/nginx/html nginx
14. docker ps
15. docker exec -it <container_id> sh
16. cd /usr/share/nginx/html
17. ls

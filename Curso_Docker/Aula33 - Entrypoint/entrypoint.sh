Diferença entre ENTRYPOINT e CMD
# ENTRYPOINT é usado para definir o comando principal que será executado quando o container for iniciado, enquanto CMD é usado para fornecer argumentos padrão para esse comando. ENTRYPOINT não pode ser substituído facilmente, enquanto CMD pode ser substituído ao iniciar o container.

Ou seja, ENTRYPOINT define o comando que será executado, enquanto CMD define os argumentos desse comando, exemplo:
ENTRYPOINT ["python", "app.py"] e CMD ["--port", "5000"]. Se você quiser substituir o comando, você pode usar a opção --entrypoint ao iniciar o container, mas isso não é recomendado, pois pode causar problemas de compatibilidade.
Esse entrypoint e cmd tem como função principal definir o comando que será executado quando o container for iniciado, e os argumentos desse comando.
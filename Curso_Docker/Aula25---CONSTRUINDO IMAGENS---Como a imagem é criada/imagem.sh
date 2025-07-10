Como criar uma imagem Docker?


Dockerfile   <--- docker build -t nome_da_imagem:tag .
(Tudo que a aplicação precisa para rodar)
_________                                             Imagem
From...  |                                         _____________                           Container
Run...   |                                        |             |                        _____________
Copy...  |    --------------------------------->  |             |    -----------------> |_____________|
Env...   |                                        |             |
CMD...   |                                        |_____________|
_________|                                        





From .... # Base da imagem, por exemplo python:alpine
FROM python:alpine

Run .... # Comandos para instalar dependências, etc, por exemplo, pip install
RUN pip install flask

Copy ... # Copia arquivos do host para a imagem, por exemplo, o código da aplicação
COPY app.py /app/app.py

Env .... # Variáveis de ambiente que a aplicação precisa
ENV FLASK_ENV=development

CMD .... # Comando para iniciar a aplicação, por exemplo, python app.py ( é o comando que vai rodar quando dermos um docker run)
CMD ["python", "/app/app.py"]
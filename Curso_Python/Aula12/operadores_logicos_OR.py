'''
or = QUALQUER CONDIÇÃO VERDADEIRA AVALIA TODA A EXPRESSÃO COMO VERDADEIRA, 

ou seja, se tivermos:

print(False or 0 or 0.0 or 'abc') ; o código retornará o abc
'''


entrada = input('[E]ntrar [S]air: ') #or 'Selecione E ou S'
senha = input('Senha: ')# or 'Sem senha'

  
senha_permitida = '123'
admin = '190'


if (entrada == 'E' or entrada == 'e') and (senha == senha_permitida or senha == admin):
    print('Entrar')
else:
    print('Sair')
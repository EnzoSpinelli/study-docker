'''

and (e) , or (ou) , not ( não)

and - Todas as condições precisam ser True
São considerados valores falsos : 0    0.0    ''    False

'''


entrada = input('[E]ntrar [S]air: ')
senha = input('Senha: ')


senha_permitida = '123'


if entrada == 'E' and senha == senha_permitida:
    print('Entrar')
else:
    print('Sair')
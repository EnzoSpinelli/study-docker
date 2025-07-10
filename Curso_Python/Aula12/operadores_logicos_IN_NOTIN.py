'''
Operadores in e not in ( está entre e não está entre)
Strings são iteráveis ( navegado item por item)

 0 1 2 3 4 5
 0 t á v i o
-6-5-4-3-2-1

'''

# nome = 'Otávio'

# # print(nome[2]) # isso é um indice
# print('á' in nome) # verifica se o á está dentro de nome



nome = input('Digite o seu nome: ')
encontrar = input('DIgite o que voce quer encontrar: ')

if encontrar in nome:
    print(f'{encontrar} está dentro de {nome}')
else:
    print(f'{encontrar} não está dentro de {nome}')
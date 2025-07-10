#variaveis 
# O sinal de " = " é de atribuição 

# nome_completo = 'Enzo \r\n'
# soma = 2+2
# print(nome_completo, soma) 

nome = str(input("Digite seu nome: "))
idade = int(input("Digite sua idade: "))

if idade >= 18:
    print('Você é maior de idade')
else:
    print('Você é menor de idade')
# maior = idade >= 18

print('Seu nome é', nome, 'e sua idade é', idade,)
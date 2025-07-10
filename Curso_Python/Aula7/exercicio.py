nome = str(input("Digite seu nome: "))
altura = float(input("Digite sua altura em metro ( Exemplo = 1.75 ):"))
peso = float(input("Digite seu peso em kilo ( Exemplo = 65.9): "))

imc = peso/(altura*altura)

msg_txt = f'{nome} tem altura de {altura:.2f} e seu IMC é {imc}'

print(msg_txt)
if imc < 18.5:
    print ('Abaixo do peso')
elif 18.5 <= imc <= 24.9:
    print ('Peso normal')
elif 25 <= imc <= 29.9:
    print ('Sobrepeso')
elif 30 <= imc <= 34.9:
    print ('Obesidade Grau I')
elif 35 <= imc <= 39.9:
    print ('Obesidade Grau II')
else:
    print ('Obseidade Grau III')


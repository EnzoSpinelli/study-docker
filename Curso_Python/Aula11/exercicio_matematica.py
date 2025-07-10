p_valor = input('Digite um valor: ')
s_valor = input('Digite o segundo valor: ')

e_p = int(p_valor)
e_s = int(s_valor)

if e_p > e_s:
    print(f'O primeiro valor {e_p} é maior que o segundo valor {e_s} ')
elif e_s > e_p:
    print(f'O segundo valor {e_s} é maior que o primeiro valor {e_p}')
else:
    print('Os valores são iguais')
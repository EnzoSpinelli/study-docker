print('1' + 1) #Da errado pois ele não interpreta o '1' como INT, mas sim como STR
print(int('1') + 1) # Para ajustar, forçamos o tipo

print(11 +'b') #Da erro
print(str(11) + 'b') #Da certo
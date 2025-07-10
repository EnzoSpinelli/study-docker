a = 'a'
b = 'B'
c = 1.1

formato = ''.format#isso é um método
formato = ''.format(a, b, c)#isso é um argumento
formato = 'a={0} b={1} c={p1:.2f}'.format(a, b, p1=c)#isso é um parâmetro


print(formato)
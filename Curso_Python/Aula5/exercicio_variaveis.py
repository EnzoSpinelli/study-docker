import json
import os

def dados_json(dados):
            caminho = "./dados.json"

            if os.path.exists(caminho):
                with open(caminho, "r") as arquivo:
                    try:
                        conteudo = json.load(arquivo)
                    except json.JSONDecodeError:
                        conteudo = []
            else:
                conteudo = []
            
            conteudo.append(dados)

            with open(caminho, "w") as arquivo:
                json.dump(conteudo, arquivo, indent=4)
            print('Dados armazenados')

def dados():
    while True:
        nome = str(input('Digite seu nome completo: '))
        parte = nome.split()

        sobrenome = " ".join(parte[1:])

        idade = int(input('Digite sua idade: '))
        nascimento = 2025 - idade
        idade_maior = idade >= 18



        altura = float(input('Digite sua altura em metros: '))

        print('Seu nome é:', nome, '\r\n'
            'Seu sobrenome é:', sobrenome, '\r\n'
            'Sua idade é: ', idade, '\r\n'
            'Seu ano de nascimento é: ', nascimento, '\r\n'
            'Você é maior de idade? ', idade_maior, '\r\n'
            'Sua altura é', altura, '\r\n'     
            )

        conferir = input('\nSeus dados estão corretos? (Sim/Não): ').strip().lower()

        if conferir == 'sim':
            print('\n Dados confirmados e armazenando-os...')

            dados = {
                "nome_completo": nome,
                "sobrenome": sobrenome,
                "idade": idade,
                "ano_nascimento": nascimento,
                "maior_de_idade": idade_maior,
                "altura_metros": altura
            }
            dados_json(dados)
            break
        else:
            print('\n Vamos tentar novamente...')
dados()

         
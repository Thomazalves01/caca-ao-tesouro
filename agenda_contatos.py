#agenda de contatos
contatos = {
    "carlos":{
        "telefone":"51999999999",
        "e-mail": "carlos@gmail"
    },
    "mariana":{
         "telefone":"51988888888",
        "e-mail": "mariana@gmail"
    }
}
print("\n --- Agenda de contatos ---")
#buscar dados do dicionario contatos
#a primeira informação do dicionario é o nome da pessoa 
#1 coluna foi chamada de nome
for nome, dados in contatos.items():
    print(f"\nnome: {nome}")
    print(f"telefone: {dados['telefone']}")
    print(f"telefone: {dados['e-mail']}")
#buscar pessoa no dicionario pelo nome
nome = input("digite o nome da pessoa a ser localizada: ")
#busca no dicionario contatos
if nome in contatos:
    contato = contatos [nome] #cria um vetor e usa como filtro pelo campo
    print(f"\ntelefone: {contato['telefone']}")
    print(f"e-mail: {contato['e-mail']}")
else:
    print("nao encontrado")
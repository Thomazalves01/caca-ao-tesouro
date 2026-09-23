produtos = {
    "arroz" : 14.90,
    "Feijão" : 8.5,
    "leite" : 5.59,
    "café" : 24.99
}
print(" --- Catálogo de produtos")
for produto, preco in produtos.items(): #percorre o meu dicionário de produtos e busca tpdas informações com nome e preço
    print(f"produto: {produto} - R${preco:.2f}")

print("consultar um produto")
nome = input("digite o nome do produto: ")
if nome in produtos: #localizar nome do produto no dicionario
    print(f"preço: R${produtos[preco]:.2f}")
else:
    print("nao localizado, reveja seus conceitos")
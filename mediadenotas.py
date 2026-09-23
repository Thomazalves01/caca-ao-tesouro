notas = [6,4,8,6,5.5]
soma = sum(notas) #soma dos valores do vetor
media = soma / len(notas)#usando o len (ler a quant. de elem. do vetor)
print ("media das notas",media)
for nota in notas: #buscar nota no vetor
    print(f"{nota + 1} - {nota:.2f}")

print(f"\nSoma das notas: {soma:.2f}")
print(f"\nMédia da turma: {media:.2f}") # a variavel :.2f 


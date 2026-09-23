numeros = [4,7,9,3,2,6]
pares = []
impares = []
#processamento
for numero in numeros:
    if numero %2 == 0: #mod: resto da divisão (função para numero par)
        pares.append(numero)#append => add valor ao vetor
    else:
        impares.append(numero)#append => add valor ao vetor
print("Números pares: ",pares)
print("Números ímpares: ",impares)
print(f"lista dos números: {numeros}")
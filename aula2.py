#exemplo 1: cadastro de aluno
alunos = [] # vetor
for i in range(5):
    nome = input(f"informe o nome do aluno{i+1}: ") # i vai ser 0, entao 0+1 = 1 aluno
    alunos.append(nome)
print("\n --- Alunos cadastrados ---")
for aluno in alunos:
    print (f"-{aluno}")
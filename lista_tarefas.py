tarefas = []

# menu usando o enquanto
while True:
    print("\n--- MENU DE TAREFAS ---")
    print("1. Adicionar tarefa")
    print("2. Listar tarefas")
    print("3. Remover tarefa")
    print("4. Sair")
    
    opcao = input("escolha a opção: ")
    
    if opcao == "1":
        nova_tarefa = input("Digite a nova tarefa: ")
        tarefas.append(nova_tarefa)
        print("tarefa add com sucesso!")
        
    elif opcao == "2":
        if not tarefas:
            print("A lista de tarefas está vazia.")
        else:
            print("\nSUAS TAREFAS:")
            for i, tarefa in enumerate(tarefas, 1):
                print(f"{i}. {tarefa}")
                
    elif opcao == "3":
        if not tarefas:
            print("Não há tarefas para remover.")
        else:
            print("\nSUAS TAREFAS:")
            for i, tarefa in enumerate(tarefas, 1):
                print(f"{i}. {tarefa}")
                
            num = int(input("Digite o número da tarefa a remover: "))
            if 1 <= num <= len(tarefas):
                removida = tarefas.pop(num - 1)
                print(f"Tarefa '{removida}' removida com sucesso!")
            else:
                print("Número inválido.")
                
    elif opcao == "4":
        print("Saindo do programa... Até logo!")
        break
        
    else:
        print("Opção inválida! Tente novamente.")
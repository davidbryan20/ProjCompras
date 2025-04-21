import json

def adicionar_icms(lista_produtos):
    calcular_icms = lambda preco: preco * 0.18
    lista_final = []
    for item in lista_produtos:
        if len(item) == 3:
            nome, preco, tipo = item
            icms = round(calcular_icms(preco), 2)
        else:
            nome, preco, tipo, icms = item
        lista_final.append({
            "nome": nome,
            "preco": preco,
            "tipo": tipo,
            "icms": icms
        })
    return lista_final

def main():
    lista = []

    while True:
        resp = input('\nDeseja cadastrar ou alterar sua lista? (sim/não): ').lower()

        if resp in ('sim', 'ss', 's'):
            print("\nEscolha uma opção:")
            print("1) Fazer um carrinho de compras")
            print("2) Saber o valor do ICMS")
            print("3) Cadastrar um novo produto")
            print("4) Baixar lista no formato JSON")
            print("5) Sair")

            try:
                opcao = int(input("Escolha uma das opções (1 a 5): "))
            except ValueError:
                print("Opção inválida. Digite um número inteiro entre 1 e 5.")
                continue

            if opcao == 1:
                try:
                    lista = []
                    qtd = int(input("Digite a quantidade de produtos que deseja adicionar: "))
                    for _ in range(qtd):
                        descricao = input("Descrição do produto: ")
                        preco = float(input("Valor do produto: "))
                        embalagem = input("Embalagem do produto: ")
                        lista.append([descricao, preco, embalagem])
                    print("Carrinho criado:", lista)
                except ValueError:
                    print("Entrada inválida. Preço e quantidade devem ser numéricos.")

            elif opcao == 2:
                print("\nCalculando ICMS...")
                try:
                    produtos_com_icms = adicionar_icms(lista)
                    for item in produtos_com_icms:
                        print(f"Produto: {item['nome']}, Preço: R${item['preco']:.2f}, Tipo: {item['tipo']}, ICMS: R${item['icms']:.2f}")
                except Exception as e:
                    print(f"Erro ao calcular ICMS: {e}")

            elif opcao == 3:
                print("\nCadastrando novo produto...")
                while True:
                    np = input("Deseja cadastrar um novo produto? (sim/não): ").lower()
                    if np in ('sim', 'ss', 's'):
                        try:
                            descricao = input("Descrição do produto: ")
                            preco = float(input("Valor do produto: "))
                            embalagem = input("Embalagem do produto: ")
                            icms = round(preco * 0.18, 2)
                            lista.append([descricao, preco, embalagem, icms])
                        except ValueError:
                            print("Entrada inválida. O preço deve ser um número.")
                    else:
                        break
                print("Lista atualizada:", lista)

            elif opcao == 4:
                if len(lista) >= 5:
                    print("\nSalvando lista em JSON...")
                    try:
                        produtos_com_icms = adicionar_icms(lista)
                        nome_arquivo = '1_5_arquivo_produto.json'
                        with open(nome_arquivo, 'w', encoding='utf-8') as arquivo:
                            json.dump(produtos_com_icms, arquivo, ensure_ascii=False, indent=4)
                        print(f"Arquivo '{nome_arquivo}' criado com sucesso!")
                    except Exception as e:
                        print(f"Erro ao salvar JSON: {e}")
                else:
                    print("Sua lista tem menos que 5 produtos. Adicione mais produtos para salvar.")

            elif opcao == 5:
                print("Obrigado, até logo!")
                break

            else:
                print("Opção inválida. Digite um número de 1 a 5.")

        elif resp in ('não', 'nao', 'n'):
            print("Obrigado pelo cadastro, até logo!")
            break

        else:
            print("Resposta inválida. Digite 'sim' ou 'não'.")

if __name__ == "__main__":
    main()

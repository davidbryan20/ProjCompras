# 🛒 Projeto Melhores Compras SGV

Este projeto tem como objetivo a modelagem e criação do banco de dados relacional do sistema **Melhores Compras SGV** — uma solução que visa otimizar o gerenciamento de clientes, funcionários, produtos e atendimentos via SAC em uma empresa de comércio eletrônico com recursos de vídeo.

## 📌 Descrição Geral

O banco de dados foi desenvolvido com base em um modelo ER e implementado no **Oracle SQL**. Ele contempla entidades como:

- Clientes (Pessoa Física e Jurídica)
- Funcionários e Departamentos
- Endereços detalhados (com hierarquia Estado → Cidade → Bairro → Logradouro)
- Produtos e Categorias
- Vídeos associados a produtos e suas visualizações
- Atendimentos SAC realizados por funcionários

---

## 📂 Estrutura dos Scripts

- `Cria.sql`: Script responsável por criar todas as tabelas do banco, incluindo as **chaves primárias** e **estrangeiras**.
- `Apaga.sql`: Script para remover todas as tabelas na ordem correta, prevenindo erros de dependência entre as tabelas.

---

## 🧱 Tecnologias Utilizadas

- Oracle Database
- SQL Developer ou ferramenta similar
- SQL ANSI padrão
- Modelagem Entidade-Relacionamento (ER)

---

## 👥 Integrantes do Grupo

| Nome Completo       | RM        | LinkedIn                             |
|---------------------|-----------|--------------------------------------|
| David Bryan   | RM565407  | [LinkedIn](https://www.linkedin.com/in/david-sales-60255766/) |
| Barbara Ayumi   | RM565513  | [LinkedIn](https://www.linkedin.com/in/barbara-ayumi-106851262/) |
| Matheus Santos | RM562378 | [LinkedIn](https://www.linkedin.com/in/matheus-rodrigo-s/)         |
| Ana Carvalho | RM561917 | [LinkedIn](https://www.linkedin.com/in/ana-carolina-c-de-paula-153465229/) |

---

## ✅ Como Executar

1. Abra o SQL Developer ou ferramenta de sua preferência.
2. Execute primeiro o script `Apaga.sql` para remover as tabelas, se já existirem.
3. Em seguida, execute o script `Cria.sql` para criar todas as tabelas e relações.
4. Você pode popular as tabelas com dados de exemplo para testar as funcionalidades (opcional).

---

## 📬 Contato

Se desejar tirar dúvidas ou contribuir com o projeto, sinta-se à vontade para entrar em contato com os integrantes listados acima.

---


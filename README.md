# CRUD de pedidos que contém produtos realizados por uma pessoa

## DESAFIO PARTE 1

A tarefa consiste em definir três tabelas e suas regras de negócio através de model e migrations e realizar consultas com postgres através do pgadmin ou CLI.

Criar:

Uma tabela products (name, price, timestamps)
Uma tabela orders (name="Compras da ", person_id, product_id, timestamps)
Uma tabela people (name, timestamps)

Contexto:
Pessoas farão orders para comprar/pedir um ou mais products. Logo, estes produtos pertencem a uma ou mais orders. A person estará vinculada a uma order também.

## DESAFIO PARTE 2

Já conectado ao seu banco, você irá realizar as seguintes pesquisas - queries sql:

Listar todas as pessoas (people).
Listar todas os produtos (products.)
Listar todas as compras com o nome da pessoa que a fez no qual uma determinada pessoa 'Jose' fez parte.
Listar todas as compras com o nome da pessoa que a fez no qual um determinado produto (product) com nome 'Arroz' faça parte.

## DESAFIO PARTE 3

Adapte suas pesquisas para o ActiveRecord e construa as telas onde serão exibidos os dados das três primeiras queries da parte 2 do desafio.

Plus - Configure o Bootstrap na sua aplicação e separe as duas listagens por abas.

Deverá ser criado um novo projeto rails na versão 5.2.0.
Para realizar as tasks acima, você deverá ter seu database.yml configurado para o adaptador do postgres.

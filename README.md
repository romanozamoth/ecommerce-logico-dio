# Projeto Conceitual de Banco de Dados – E-commerce

Este projeto foi desenvolvido como parte do desafio da **Digital Innovation One (DIO)** no bootcamp, com o objetivo de refinar um modelo conceitual de banco de dados voltado para um sistema de e-commerce.

---

## 📌 Contexto

O modelo representa um sistema de e-commerce que gerencia **clientes, pedidos, produtos, fornecedores, estoque, vendedores terceiros, pagamentos e entregas**.

O ponto de partida foi um modelo básico desenvolvido em aula. Em seguida, ele foi refinado para atender aos seguintes requisitos do desafio:

1. **Cliente PJ e PF**  
   - Um cliente pode ser **Pessoa Física (PF)** ou **Pessoa Jurídica (PJ)**, mas nunca ambos ao mesmo tempo.  
   - Para isso, o atributo `tipoCliente` foi adicionado, aceitando os valores `CPF` ou `CNPJ`.  
   - O campo `Identificação` armazena o número correspondente, de acordo com o tipo.

2. **Pagamento**  
   - Criada a entidade `Pagamento`, permitindo que **um pedido tenha mais de uma forma de pagamento**.  
   - Campos principais: `FormaPagamento` e `Valor`.  
   - Relacionamento: um pedido pode estar vinculado a múltiplos pagamentos.

3. **Entrega**  
   - Criada a entidade `Entrega`, vinculada a cada pedido.  
   - Campos principais: `Status` (pendente, enviado, entregue, etc.) e `CodigoRastreio` para rastreamento do pedido.


Deste modelo foi gerado os scripts do schema e criado os inserts e queries conforme solicitado no desafio para atender a entrega.

---

## 📊 Modelo Conceitual

Abaixo está a representação do diagrama refinado:
![Diagrama E-commerce](./images/diagrama.png)

---

## 🚀 Como Utilizar

1. O diagrama foi construído no **MySQL Workbench**.  
2. O arquivo `.mwb` presente em '/workbench_diagram/diagram_ecommerce.mwb' pode ser aberto no Workbench para futuras alterações.  
3. Caso necessário, o modelo pode ser traduzido para **modelo lógico/físico (DDL SQL)**.  

---

## 📚 Entidades Principais

- **Cliente** → Pessoa Física (CPF) ou Jurídica (CNPJ).  
- **Pedido** → Registra informações de status, descrição e frete.  
- **Produto** → Contém dados de categoria, descrição e valor.  
- **Pagamento** → Suporta múltiplas formas de pagamento por pedido.  
- **Entrega** → Controla status e código de rastreio.  
- **Fornecedor / Estoque / Vendedor Terceiro** → Complementam a gestão dos produtos.

---

## 🗃️ Queries para Entrega Desafio

- **Quantos pedidos foram feitos por cada cliente?** → 
[Pedido por Cliente](./sql/query_pedidos_por_cliente.sql)

- **Algum vendedor também é fornecedor?** → 
[Vendedor x Fornecedor](./sql/query_vendedor_fornecedor.sql)

- **Relação de produtos fornecedores e estoques;** → 
[Produto x Fornecedor x Estoque](./sql/query_produto_fornec_estoque.sql)

- **Relação de nomes dos fornecedores e nomes dos produtos;** → 
[Fornecedor x Produto](./sql/query_fornec_produto.sql)

- **Total gasto por cliente?** → 
[Total gasto por Cliente](./sql/query_total_por_cliente.sql)

- **Pedidos com mais de 1 forma de pagamento** → 
[Pedidos com +1 Pagamento](./sql/query_pedidos_pagamentos.sql)

- **Produtos com estoque total por local** → 
[Produto Estoque Total por Local](./sql/query_estoque_total_por_local.sql)

- **Pedidos e status de entrega com filtro** → 
[Pedido Status Filtro](./sql/query_pedido_status_entrega.sql)

- **Produtos fornecidos por fornecedores que também são vendedores** → 
[Produtos Fornecedores Vendedores](./sql/query_produto_fornec_vendedor.sql)

- **Clientes PF que gastaram mais de R$100** → 
[Cliente PF gasto > R$100](./sql/query_cliente_pf_maior_100.sql)

---

## 🖥️ Executando o Banco
1. Abra o MySQL Workbench.
2. Execute o script `create_schema.sql` para criar o [schema](./sql/create_schema.sql).
3. Execute os [scripts de inserts](./sql/insert_values.sql).
4. Teste as queries listadas acima.

---

Desenvolvido como parte do bootcamp da [Digital Innovation One](https://www.dio.me/).

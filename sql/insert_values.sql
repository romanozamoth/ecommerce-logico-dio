INSERT INTO Cliente (idCliente, Nome, `Tipo Cliente`, Identificação, Endereço)
VALUES
(1, 'João Silva', 'CPF', '123.456.789-00', 'Rua A, 123'),
(2, 'Empresa X', 'CNPJ', '12.345.678/0001-99', 'Av. B, 456');

INSERT INTO Fornecedor (idFornecedor, `Razão Social`, CNPJ)
VALUES
(1, 'Fornecedor A', '11.111.111/0001-11'),
(2, 'Fornecedor B', '22.222.222/0001-22');

INSERT INTO Produtos (idProdutos, Categoria, Descrição, Valor)
VALUES
(1, 'Eletrônicos', 'Produto A', '100'),
(2, 'Eletrônicos', 'Produto B', '200');

INSERT INTO Pedido (idPedido, Status, Descrição, Cliente_idCliente, Frete, Entrega_idEntrega)
VALUES
(1, 'Pendente', 'Pedido 1', 1, 15, 1),
(2, 'Enviado', 'Pedido 2', 2, 20, 2);

INSERT INTO Pagamento (idPagamento, `Forma Pagamento`, Valor, Pedido_idPedido, Pedido_Cliente_idCliente, Pedido_Entrega_idEntrega)
VALUES
(1, 'Boleto', 115, 1, 1, 1),
(2, 'Cartão', 100, 1, 1, 1),
(3, 'PIX', 220, 2, 2, 2);

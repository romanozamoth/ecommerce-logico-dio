SELECT 
    pr.Descrição AS produto,
    f.`Razão Social` AS fornecedor,
    e.Local AS estoque_local,
    pe.Quantidade AS quantidade_estoque
FROM 
    Produtos pr
JOIN 
    `Disponibilizando Produtos` dp ON pr.idProdutos = dp.Produtos_idProdutos
JOIN 
    Fornecedor f ON dp.Fornecedor_idFornecedor = f.idFornecedor
JOIN 
    `Produtos_has_Estoque` pe ON pr.idProdutos = pe.Produtos_idProdutos
JOIN 
    Estoque e ON pe.Estoque_idEstoque = e.idEstoque
ORDER BY 
    f.`Razão Social`, pr.Descrição;

SELECT 
    f.`Razão Social` AS fornecedor,
    pr.Descrição AS produto
FROM 
    Fornecedor f
JOIN 
    `Disponibilizando Produtos` dp ON f.idFornecedor = dp.Fornecedor_idFornecedor
JOIN 
    Produtos pr ON dp.Produtos_idProdutos = pr.idProdutos
ORDER BY 
    f.`Razão Social`, pr.Descrição;

SELECT 
    pr.Descrição AS produto,
    f.`Razão Social` AS fornecedor,
    tv.`Razao Social` AS vendedor
FROM 
    Produtos pr
JOIN 
    `Disponibilizando Produtos` dp ON pr.idProdutos = dp.Produtos_idProdutos
JOIN 
    Fornecedor f ON dp.Fornecedor_idFornecedor = f.idFornecedor
LEFT JOIN 
    `Terceiro Vendedor` tv ON tv.`Razao Social` = f.`Razão Social`
ORDER BY 
    f.`Razão Social`, pr.Descrição;

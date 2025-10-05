SELECT 
    pr.Descrição AS produto,
    e.Local AS estoque_local,
    SUM(pe.Quantidade) AS total_estoque
FROM 
    Produtos pr
JOIN 
    `Produtos_has_Estoque` pe ON pr.idProdutos = pe.Produtos_idProdutos
JOIN 
    Estoque e ON pe.Estoque_idEstoque = e.idEstoque
GROUP BY 
    pr.idProdutos, e.Local
ORDER BY 
    total_estoque DESC;

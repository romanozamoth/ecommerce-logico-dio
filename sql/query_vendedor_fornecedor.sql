SELECT 
    tv.`Razao Social` AS nome_vendedor,
    f.`Razão Social` AS nome_fornecedor
FROM 
    `Terceiro Vendedor` tv
INNER JOIN 
    Fornecedor f 
    ON tv.`Razao Social` = f.`Razão Social`;

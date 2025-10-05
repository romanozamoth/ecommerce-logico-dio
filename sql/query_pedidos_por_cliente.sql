SELECT 
    c.Nome AS cliente,
    COUNT(p.idPedido) AS total_pedidos
FROM 
    Cliente c
LEFT JOIN 
    Pedido p ON c.idCliente = p.Cliente_idCliente
GROUP BY 
    c.idCliente, c.Nome
ORDER BY 
    total_pedidos DESC;
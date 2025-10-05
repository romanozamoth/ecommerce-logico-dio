SELECT 
    c.Nome AS cliente,
    SUM(pag.Valor) AS total_gasto
FROM 
    Cliente c
JOIN 
    Pedido ped ON c.idCliente = ped.Cliente_idCliente
JOIN 
    Pagamento pag ON ped.idPedido = pag.Pedido_idPedido
                 AND ped.Cliente_idCliente = pag.Pedido_Cliente_idCliente
                 AND ped.Entrega_idEntrega = pag.Pedido_Entrega_idEntrega
GROUP BY 
    c.idCliente, c.Nome
ORDER BY 
    total_gasto DESC;
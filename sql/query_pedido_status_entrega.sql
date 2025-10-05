SELECT 
    ped.idPedido,
    c.Nome AS cliente,
    ped.Status AS status_pedido,
    e.Status AS status_entrega
FROM 
    Pedido ped
JOIN 
    Cliente c ON ped.Cliente_idCliente = c.idCliente
JOIN 
    Entrega e ON ped.Entrega_idEntrega = e.idEntrega
WHERE 
    e.Status = 'Pendente'
ORDER BY 
    ped.idPedido;

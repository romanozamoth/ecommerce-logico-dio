SELECT 
    ped.idPedido,
    c.Nome AS cliente,
    COUNT(pag.idPagamento) AS total_pagamentos
FROM 
    Pedido ped
JOIN 
    Cliente c ON ped.Cliente_idCliente = c.idCliente
JOIN 
    Pagamento pag ON ped.idPedido = pag.Pedido_idPedido
                 AND ped.Cliente_idCliente = pag.Pedido_Cliente_idCliente
                 AND ped.Entrega_idEntrega = pag.Pedido_Entrega_idEntrega
GROUP BY 
    ped.idPedido, c.Nome
HAVING 
    COUNT(pag.idPagamento) > 1;

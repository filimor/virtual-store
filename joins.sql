SELECT * FROM  tb_clientes 
LEFT JOIN tb_pedidos ON (tb_clientes.id_cliente = tb_pedidos.id_cliente);

SELECT * FROM tb_produtos 
LEFT JOIN tb_imagens ON (tb_produtos.id_produto = tb_imagens.id_produto);

SELECT * FROM  tb_clientes 
RIGHT JOIN tb_pedidos ON (tb_clientes.id_cliente = tb_pedidos.id_cliente);

SELECT * FROM tb_pedidos
LEFT JOIN tb_pedidos_produtos ON (tb_pedidos.id_pedido = tb_pedidos_produtos.id_pedido)
LEFT JOIN tb_produtos ON (tb_pedidos_produtos.id_produto = tb_produtos.id_produto);

SELECT * FROM tb_pedidos
RIGHT JOIN tb_pedidos_produtos ON (tb_pedidos.id_pedido = tb_pedidos_produtos.id_pedido)
LEFT JOIN tb_produtos ON (tb_pedidos_produtos.id_produto = tb_produtos.id_produto);

SELECT * FROM tb_pedidos
RIGHT JOIN tb_pedidos_produtos ON (tb_pedidos.id_pedido = tb_pedidos_produtos.id_pedido)
RIGHT JOIN tb_produtos ON (tb_pedidos_produtos.id_produto = tb_produtos.id_produto);

SELECT * FROM tb_pedidos
INNER JOIN tb_pedidos_produtos ON (tb_pedidos.id_pedido = tb_pedidos_produtos.id_pedido);

SELECT * FROM tb_pedidos
INNER JOIN tb_pedidos_produtos ON (tb_pedidos.id_pedido = tb_pedidos_produtos.id_pedido)
INNER JOIN tb_produtos ON (tb_pedidos_produtos.id_produto = tb_produtos.id_produto);

-- Usando Alias

SELECT * FROM tb_produtos LEFT JOIN tb_descricoes_tecnicas ON (tb_produtos.id_produto = tb_descricoes_tecnicas.id_produto);

SELECT p.id_produto, p.produto, p.valor, dt.descicao_tecnica 
FROM tb_produtos AS p LEFT JOIN tb_descricoes_tecnicas AS dt ON (p.id_produto = dt.id_produto)
WHERE p.valor >= 500
ORDER BY p.valor ASC;

-- EJERCICIO 1: Clientes activos con pedidos entregados

SELECT DISTINCT c.nombre, c.email
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente
WHERE c.activo = 1
  AND p.estado = 'entregado';


-- EJERCICIO 2: Total de ventas por categoría (solo entregados)

SELECT pr.categoria,
       SUM(pr.precio * p.cantidad) AS total_ventas
FROM pedidos p
JOIN productos pr ON p.id_producto = pr.id_producto
WHERE p.estado = 'entregado'
GROUP BY pr.categoria
ORDER BY total_ventas DESC;



-- EJERCICIO 3: Productos sin pedidos y con stock disponible

SELECT pr.nombre, pr.categoria, pr.precio
FROM productos pr
LEFT JOIN pedidos p ON pr.id_producto = p.id_producto
WHERE p.id_pedido IS NULL
  AND pr.stock > 0;

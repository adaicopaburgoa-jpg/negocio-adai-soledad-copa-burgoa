-- 1. Productos con el nombre de su categoria, ordenados por nombre 
SELECT p.id, p.nombre AS producto, c.nombre AS categoria, p.precio, p.stock
FROM productos p
JOIN categorias c ON p.categoria_id = c.id
ORDER BY p.nombre ASC;

-- 2. Productos con menos de 5 unidades en stock 
SELECT id, nombre, precio, stock
FROM productos
WHERE stock < 5;

-- 3. Precio promedio por categoria 
SELECT c.nombre AS categoria, AVG(p.precio) AS precio_promedio
FROM productos p
JOIN categorias c ON p.categoria_id = c.id
GROUP BY c.id, c.nombre;

-- 4. Pedidos de un cliente con su fecha y estado
SELECT pe.id AS pedido_id, c.nombre AS cliente, pe.fecha, pe.estado
FROM pedidos pe
JOIN clientes c ON pe.cliente_id = c.id
WHERE c.id = 1;

-- 5. Total en dinero de cada pedido
SELECT pedido_id, SUM(cantidad * precio_unitario) AS total_dinero_pedido
FROM detalle_pedido
GROUP BY pedido_id;

-- 6. Clientes con mas de 2 pedidos 
SELECT c.id, c.nombre, COUNT(pe.id) AS total_pedidos
FROM clientes c
JOIN pedidos pe ON c.id = pe.cliente_id
GROUP BY c.id, c.nombre
HAVING COUNT(pe.id) > 2;

-- 7. Eliminar un cliente sin pedidos 
DELETE FROM clientes
WHERE id NOT IN (SELECT DISTINCT cliente_id FROM pedidos);
INSERT INTO categorias (nombre) VALUES 
('Bebidas'),
('Abarrotes'),
('Snacks');

INSERT INTO productos (nombre, categoria_id, precio, stock) VALUES 
('Coca Cola 2L', 1, 15.50, 20),
('Agua Mineral 1.5L', 1, 8.00, 3),
('Jugo de Naranja 1L', 1, 12.00, 15),
('Arroz 1kg', 2, 9.50, 4),
('Fideo 500g', 2, 6.50, 25),
('Aceite Vegetal 1L', 2, 18.00, 2),
('Azúcar 1kg', 2, 7.50, 30),
('Sal 1kg', 2, 5.00, 18),
('Galletas María', 3, 6.00, 2),
('Papas Fritas Bolsa', 3, 10.00, 12),
('Chocolate en Barra', 3, 14.00, 25),
('Chicles de Menta', 3, 2.50, 40);

INSERT INTO clientes (nombre, telefono, email) VALUES 
('Nuriel Cabrera', '70123456', 'NuriCabrera@gmail.com'),
('Luna Calatayud', '71234567', 'LunitaMariana@gmail.com'),
('Monzerrath Estrada', '72345678', 'EstradaMonze@gmail.com'),
('Angel Butron', '73456789', 'butrons@gmail.com'),
('Benjamin Condori', '74567890', 'benjaminc@gmail.com'),
('Adai Copa', '75678901', 'adai.copa@gmail.com');

INSERT INTO pedidos (cliente_id, fecha, estado) VALUES 
(1, '2026-10-01', 'Entregado'),
(1, '2026-10-05', 'Pendiente'),
(2, '2026-10-02', 'Entregado'),
(3, '2026-10-03', 'Cancelado'),
(3, '2026-10-06', 'Entregado'),
(3, '2026-10-08', 'Entregado'),
(4, '2026-10-04', 'Pendiente'),
(5, '2026-10-07', 'Entregado'),
(6, '2026-10-09', 'Entregado'),
(2, '2026-10-10', 'Pendiente');

INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES 
(1, 1, 2, 15.50),
(1, 4, 1, 9.50),
(1, 9, 3, 6.00),
(2, 2, 4, 8.00),
(2, 5, 2, 6.50),
(3, 3, 1, 12.00),
(3, 10, 2, 10.00),
(4, 6, 1, 18.00),
(4, 7, 3, 7.50),
(5, 8, 2, 5.00),
(5, 11, 1, 14.00),
(5, 12, 5, 2.50),
(6, 1, 1, 15.50),
(6, 2, 2, 8.00),
(7, 4, 2, 9.50),
(7, 5, 1, 6.50),
(8, 9, 4, 6.00),
(8, 10, 1, 10.00),
(9, 3, 2, 12.00),
(9, 6, 1, 18.00),
(9, 11, 2, 14.00),
(10, 7, 1, 7.50),
(10, 8, 2, 5.00),
(10, 12, 3, 2.50),
(10, 1, 1, 15.50);
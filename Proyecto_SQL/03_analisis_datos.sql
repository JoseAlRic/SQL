/*
1. Pedidos con retraso en el proceso: Esta consulta muestra todos los 
pedidos que aún están pendientes de procesar, lo que podría indicar áreas 
donde se necesita una mejora en la eficiencia del proceso.
*/
SELECT id_pedido, fecha, estado
FROM pedidos
WHERE estado = 'Pendiente';
/*
2. Productos con rotación lenta de inventario: Aquí se puede identificar 
productos con una baja cantidad en inventario, lo que podría indicar una 
rotación lenta y la necesidad de ajustar los niveles de stock o promover 
esos productos para aumentar su demanda.
*/
SELECT nombre_producto, descripcion, cantidad_inventario
FROM productos
WHERE cantidad_inventario < 10;
/*
3. Análisis de patrones de compra de clientes: Esta consulta dará una visión 
general de cuántos pedidos ha realizado cada cliente, lo que puede ayudarte a 
identificar a los clientes más activos y comprender mejor la demanda del mercado.
*/
SELECT c.nombre_cliente, COUNT(p.id_pedido) AS total_pedidos
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente
GROUP BY c.nombre_cliente
ORDER BY total_pedidos DESC;
/*
4. Productos más vendidos: Con esta consulta, se puede identificar los productos 
más populares y tomar decisiones sobre la gestión de inventario y estrategias 
de marketing.
*/
SELECT p.nombre_producto, COUNT(dp.id_producto) AS total_ventas
FROM productos p
JOIN detalle_productos dp ON p.id_producto = dp.id_producto
GROUP BY p.nombre_pedidos
ORDER BY total_ventas DESC;
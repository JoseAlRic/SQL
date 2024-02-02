-- Crear la base de datos para la gestión óptima de procesos
CREATE DATABASE IF NOT EXISTS OptiGestionDB;

-- Tabla para almacenar información sobre los clientes
CREATE TABLE IF NOT EXISTS OptiGestionDB.clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único del cliente
    nombre_cliente VARCHAR(255),                -- Nombre del cliente
    direccion VARCHAR(255),                     -- Dirección del cliente
    correo VARCHAR(100),                        -- Correo electrónico del cliente 
    telefono VARCHAR(20)                        -- Número de teléfono del cliente 
);

-- Tabla para almacenar información sobre los pedidos realizados
CREATE TABLE IF NOT EXISTS OptiGestionDB.pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único del pedido
    fecha DATE,                               -- Fecha en que se realizó el pedido
    id_cliente INT,                           -- ID del cliente que realizó el pedido (clave foránea)
    estado VARCHAR(255),                      -- Estado actual del pedido (ej. pendiente, completado, etc.)
    total_pedido FLOAT,                       -- Total del pedido en términos monetarios
    FOREIGN KEY (id_cliente) REFERENCES OptiGestionDB.clientes(id_cliente)  -- Clave foránea que referencia la tabla clientes
);

-- Tabla para almacenar información sobre los proveedores
CREATE TABLE IF NOT EXISTS OptiGestionDB.proveedores (
    id_proveedor INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único del proveedor
    nombre_proveedor VARCHAR(255),                -- Nombre del proveedor
    direccion VARCHAR(255),                        -- Dirección del proveedor
    correo VARCHAR(100),                           -- Correo electrónico del proveedor (ajustar longitud según necesidad)
    telefono VARCHAR(20)                           -- Número de teléfono del proveedor (ajustar longitud según necesidad)
);

-- Tabla para almacenar información sobre los productos disponibles
CREATE TABLE IF NOT EXISTS OptiGestionDB.productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único del producto
    nombre_producto VARCHAR(255),                -- Nombre del producto
    descripcion VARCHAR(255),                    -- Descripción del producto
    precio FLOAT,                                -- Precio del producto
    cantidad_inventario INT,                     -- Cantidad disponible en inventario
    id_proveedor INT,                            -- ID del proveedor (clave foránea)
    FOREIGN KEY (id_proveedor) REFERENCES OptiGestionDB.proveedores(id_proveedor)  -- Clave foránea que referencia la tabla proveedores
);

-- Tabla para almacenar información sobre las facturas generadas
CREATE TABLE IF NOT EXISTS OptiGestionDB.facturas (
    id_factura INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único de la factura
    id_pedido INT,                              -- ID del pedido al que corresponde la factura (clave foránea)
    fecha DATE,                                -- Fecha de emisión de la factura
    total_factura FLOAT,                       -- Total de la factura en términos monetarios
    FOREIGN KEY (id_pedido) REFERENCES OptiGestionDB.pedidos(id_pedido)  -- Clave foránea que referencia la tabla pedidos
);

-- Tabla para almacenar los detalles de los pedidos
CREATE TABLE IF NOT EXISTS OptiGestionDB.detalle_pedidos (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_producto INT,
    cantidad INT,
    FOREIGN KEY (id_pedido) REFERENCES OptiGestionDB.pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES OptiGestionDB.productos(id_producto)
);

-- Crear la base de datos
CREATE DATABASE empresaV1;
GO

-- Seleccionar la base de datos
USE empresaV1;
GO

-- Crear tabla Cliente
CREATE TABLE Cliente (
    cli_id INT PRIMARY KEY IDENTITY(1,1),  -- Clave primaria autoincremental
    cli_apenom VARCHAR(255) NOT NULL,      -- Nombre y apellido del cliente
    cli_mail VARCHAR(255) NOT NULL,        -- Correo electrónico del cliente
    cli_tel INT NOT NULL,                  -- Teléfono del cliente
    cli_fecbaj DATE,                       -- Fecha de baja del cliente
    cli_fecini DATE DEFAULT GETDATE()      -- Fecha de inicio, valor predeterminado: fecha actual
);
GO

-- Crear tabla Pedido
CREATE TABLE Pedido (
    ped_id INT PRIMARY KEY IDENTITY(1,1),  -- Clave primaria autoincremental
    ped_fec DATE DEFAULT GETDATE(),        -- Fecha del pedido, valor predeterminado: fecha actual
    ped_fecbaj DATE,                       -- Fecha de baja del pedido
    ped_total DECIMAL(10, 2) DEFAULT 0,               -- Total del pedido, valor predeterminado: 0
    cli_id INT NOT NULL,                   -- Clave foránea a Cliente
    ped_fecvenc DATE DEFAULT DATEADD(DAY, 30, GETDATE()), -- Fecha de vencimiento: fecha actual + 30 días
    ped_estado VARCHAR(50) NOT NULL CHECK (ped_estado IN ('entregado', 'solicitado', 'rechazado')),  -- Estado del pedido
    ped_obs VARCHAR(500),                  -- Observaciones del pedido
    FOREIGN KEY (cli_id) REFERENCES Cliente(cli_id)  -- Clave foránea a la tabla Cliente
);
GO

-- Crear tabla Producto
CREATE TABLE Producto (
    pro_id INT PRIMARY KEY IDENTITY(1,1),  -- Clave primaria autoincremental
    pro_nom VARCHAR(255) NOT NULL,         -- Nombre del producto
    pro_stock INT NOT NULL,                -- Stock disponible del producto
    pro_valor DECIMAL(10, 2) NOT NULL,     -- Valor del producto
    pro_fecbaj DATE                        -- Fecha de baja del producto
);
GO

-- Crear tabla ProductoEnPedido
CREATE TABLE ProductoEnPedido (
    pep_id INT PRIMARY KEY IDENTITY(1,1),  -- Clave primaria autoincremental
    ped_id INT NOT NULL,                   -- Clave foránea a Pedido
    pro_id INT NOT NULL,                   -- Clave foránea a Producto
    FOREIGN KEY (ped_id) REFERENCES Pedido(ped_id),  -- Clave foránea a la tabla Pedido
    FOREIGN KEY (pro_id) REFERENCES Producto(pro_id) -- Clave foránea a la tabla Producto
);
GO

-- Insertar datos en la tabla Cliente
INSERT INTO Cliente (cli_apenom, cli_mail, cli_tel, cli_fecbaj, cli_fecini)
VALUES 
('Juan Pérez', 'juan.perez@example.com', 123456789, NULL, '2024-01-15'),
('Ana Gómez', 'ana.gomez@example.com', 987654321, NULL, '2024-02-20'),
('Carlos López', 'carlos.lopez@example.com', 555123456, NULL, '2024-03-10'),
('Marta Fernández', 'marta.fernandez@example.com', 555654321, '2024-04-25', '2024-01-05');
GO

-- Insertar datos en la tabla Producto
INSERT INTO Producto (pro_nom, pro_stock, pro_valor, pro_fecbaj)
VALUES 
('Laptop', 50, 999.99, NULL),
('Mouse', 200, 25.50, NULL),
('Teclado', 150, 45.00, NULL),
('Monitor', 30, 199.99, '2024-06-30');
GO

-- Insertar datos en la tabla Pedido
INSERT INTO Pedido (ped_fec, ped_fecbaj, ped_total, cli_id, ped_fecvenc, ped_estado, ped_obs)
VALUES 
('2024-09-01', NULL, 1025.49, 1, '2024-10-01', 'solicitado', 'Pedido de oficina'),
('2024-09-10', NULL, 25.50, 2, '2024-10-10', 'entregado', 'Pedido para evento'),
('2024-09-15', NULL, 244.99, 3, '2024-10-15', 'solicitado', 'Pedido de reemplazo de equipo'),
('2024-09-20', '2024-09-30', 25.50, 4, '2024-10-20', 'rechazado', 'Pedido cancelado');
GO

-- Insertar datos en la tabla ProductoEnPedido
INSERT INTO ProductoEnPedido (ped_id, pro_id)
VALUES 
(1, 1), -- Laptop en el Pedido 1
(1, 2), -- Mouse en el Pedido 1
(2, 2), -- Mouse en el Pedido 2
(3, 3), -- Teclado en el Pedido 3
(3, 4), -- Monitor en el Pedido 3
(4, 2); -- Mouse en el Pedido 4
GO

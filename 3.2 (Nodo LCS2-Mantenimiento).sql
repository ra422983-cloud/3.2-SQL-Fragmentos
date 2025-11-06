CREATE DATABASE LCS2_Mantenimiento;
USE LCS2_Mantenimiento;

CREATE TABLE vehiculo(
idVehiculo INT PRIMARY KEY,
marca VARCHAR(50),
modelo VARCHAR(50),
anio INT,
placas VARCHAR(15)
);

CREATE TABLE mantenimiento (
idMantenimiento INT PRIMARY KEY AUTO_INCREMENT,
idVehiculo INT,
tipoMantenimiento VARCHAR(100),
fecha DATE,
costo DECIMAL(10,2),
descripcion TEXT,
responsable VARCHAR(100),
FOREIGN KEY (idVehiculo) REFERENCES vehiculo(idVehiculo)
);
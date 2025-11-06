CREATE DATABASE LCS1_Principal;
USE LCS1_Principal;

CREATE TABLE flotilla(
  idFlotilla INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  ubicacion VARCHAR(100),
  responsable VARCHAR(100)
);

CREATE TABLE vehiculo(
  idVehiculo INT PRIMARY KEY AUTO_INCREMENT,
  idFlotilla INT,
  marca VARCHAR(50),
  modelo VARCHAR(50),
  anio INT,
  placas VARCHAR(15) UNIQUE,
  tipo VARCHAR(50),
  estado VARCHAR(50),
  FOREIGN KEY (idFlotilla) REFERENCES flotilla(idFlotilla)
);

CREATE TABLE documento(
  idDocumento INT PRIMARY KEY AUTO_INCREMENT,
  idVehiculo INT,
  tipoDocumento VARCHAR(50),
  fechaEmision DATE,
  fechaVencimiento DATE,
  estatus VARCHAR(30),
  FOREIGN KEY (idVehiculo) REFERENCES vehiculo(idVehiculo)
);

SELECT a.marca, a.modelo, b.tipoMantenimiento, b.fecha FROM LCS1_Principal.vehiculo AS a JOIN LCS2_Mantenimiento.mantenimiento AS b ON a.idVehiculo = b.idVehiculo;

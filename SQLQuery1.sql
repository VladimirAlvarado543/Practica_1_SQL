CREATE DATABASE Empresa2025


CREATE TABLE Ubicacion (
---Identity sirve para que la id se cree automaticamente---
idUbicacion INT IDENTITY(1,1)Primary Key,
Descripcion VARCHAR(50),
);

---Creacion de tablas---
CREATE TABLE Pago(
idPago INT IDENTITY(1,1)Primary Key,
Descripcion VARCHAR(50));

CREATE TABLE Proveedor(
idProveedor INT IDENTITY(1,1)Primary Key,
nombre VARCHAR(15),
idUbicacion INT,
idPago INT,
FOREIGN KEY(idUbicacion)REFERENCES Ubicacion(idUbicacion),
FOREIGN KEY(idPago)REFERENCES Pago(idPago));
---Referenciar---

---Ingreso de datos---
INSERT INTO Ubicacion VALUES('Quezaltepeque, compra de coca cola');
INSERT INTO Ubicacion VALUES('Santiago Texacuangos, pedido de cafe');
INSERT INTO Ubicacion VALUES('Sonsonate, compra de pepsi');

INSERT INTO pago VALUES('$1200 En compra por mayor');
INSERT INTO pago VALUES('$1500 En compra por mayor');
INSERT INTO pago VALUES('$800 En compra por mayor');

INSERT INTO Proveedor VALUES('Coca Cola',1,1);
INSERT INTO Proveedor VALUES('Cafe Texalteco',2,2);
INSERT INTO Proveedor VALUES('Pepsi',3,3);}


---Consulta---
SELECT *FROM Pago
SELECT *FROM Ubicacion
SELECT *FROM Proveedor

ALTER TABLE Pago ADD Monto decimal (7/*Cantidad de digitos totales*/,2/*Cantodad de decimales*/)
UPDATE Pago set  Monto=12.50 where idPago=1
UPDATE Pago set  Monto=1500 where idPago=2
UPDATE Pago set  Monto=39.99 where idPago=3
---Ingreso de datos decimales---

---Otro Ejercicio---

CREATE TABLE AREA(
IdArea INT IDENTITY (1,1) PRIMARY KEY,
Nombre VARCHAR(15)
);



CREATE TABLE PERSONAL (
IdPersonal INT IDENTITY (1000,1) Primary key,
Nombre VARCHAR (15),
Apellido VARCHAR(15),
IdArea INT,
FOREIGN KEY(IdArea)REFERENCES AREA(IdArea),
);---Crear la tabla con referencia---

---Ingreso de datos + consultas---
INSERT INTO AREA VALUES('IT');
INSERT INTO AREA VALUES('Limpieza');

SELECT *FROM PERSONAL
SELECT *FROM AREA


INSERT INTO PERSONAL VALUES('Miguel','Perez',1);
INSERT INTO PERSONAL VALUES('Jose','Sanchez',2);

---Crear tabla edad---
ALTER TABLE PERSONAL ADD EDAD INT;
UPDATE PERSONAL SET EDAD=20 WHERE IdPersonal=1000
UPDATE PERSONAL SET EDAD=19 WHERE IdPersonal=1001

ALTER TABLE PERSONAL ADD SALARIO DECIMAL(7,2)
UPDATE PERSONAL SET SALARIO=400.00 WHERE IdPersonal=1000
UPDATE PERSONAL SET SALARIO=350.00 WHERE IdPersonal=1001
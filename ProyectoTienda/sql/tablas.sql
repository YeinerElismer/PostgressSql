CREATE TABLE tb_cliente (
	tb_cliente_Id serial not  NULL,
	tb_cliente_Nombre CHARACTER(50) not NULL,
	tb_cliente_ApPaterno CHARACTER(30) not NULL,
	tb_cliente_ApMterno CHARACTER(30) not NULL,
	tb_cliente_Direccion CHARACTER (50) ,
	tb_cliente_Dni FLOAT ,
	tb_cliente_telefono FLOAT,
	tb_cliente_FechaIngreso DATE,
	CONSTRAINT pk_tb_cliente_id PRIMARY KEY (tb_cliente_Id),
	CONSTRAINT unq_cliente_Dni UNIQUE (tb_cliente_Dni),
	CONSTRAINT chk_ciudad_Id CHECK(tb_cliente_Id>0)
)

insert into tb_cliente(tb_cliente_Nombre,tb_cliente_ApPaterno,tb_cliente_ApMterno,tb_cliente_FechaIngreso)
VALUES('YEINER','ELISMER','OLIVERA','12/05/2016');
insert into tb_cliente(tb_cliente_Nombre,tb_cliente_ApPaterno,tb_cliente_ApMterno,tb_cliente_FechaIngreso,tb_cliente_Dni)
VALUES('YOMAR','COTRINA','LOZANO','12/05/2016','27297222');
insert into tb_cliente(tb_cliente_Nombre,tb_cliente_ApPaterno,tb_cliente_ApMterno,tb_cliente_FechaIngreso,tb_cliente_Dni)
VALUES('WALTER','OLIVERA','CIEZA','12/05/2016','72221648');
insert into tb_cliente(tb_cliente_Nombre,tb_cliente_ApPaterno,tb_cliente_ApMterno,tb_cliente_FechaIngreso)
VALUES('JESUS','OLIVERA','COTRINA','12/05/2016');

CREATE TABLE tb_producto 
(
	tb_producto_Id SERIAL NOT NULL,
	tb_producto_Nombre CHARACTER(80) NOT NULL,
	tb_producto_Descripcion CHARACTER (80),
	tb_producto_Precio FLOAT NOT NULL,
	CONSTRAINT pk_tb_producto_id PRIMARY KEY(tb_producto_Id),
	CONSTRAINT chk_ciudad_id CHECK (tb_producto_Id>0)
)

Insert INTO tb_producto(tb_producto_Nombre,tb_producto_Descripcion,tb_producto_Precio)
VALUES ('HUGGIES','P','0.7');
Insert INTO tb_producto(tb_producto_Nombre,tb_producto_Descripcion,tb_producto_Precio)
VALUES ('HUGGIES','M','0.8');
Insert INTO tb_producto(tb_producto_Nombre,tb_producto_Descripcion,tb_producto_Precio)
VALUES ('HUGGIES','G','0.9');
Insert INTO tb_producto(tb_producto_Nombre,tb_producto_Descripcion,tb_producto_Precio)
VALUES ('HUGGIES','XG','1.');
Insert INTO tb_producto(tb_producto_Nombre,tb_producto_Descripcion,tb_producto_Precio)
VALUES ('HUGGIES','XXG','1.1');


CREATE TABLE tb_credito
(
		tb_credito_Id SERIAL NOT NULL,
		tb_cliente_Id integer not null,
		tb_producto_Id integer not null,
		tb_credito_Cantidad FLOAT not null,
		tb_credito_Subtotal FLOAT not null,
		tb_credito_Fecha DATE,
		tb_credito_Hora	TIME,
		CONSTRAINT pk_tb_credio_Id PRIMARY KEY (tb_credito_Id) ,
		CONSTRAINT fk_tb_credito_Cliente FOREIGN KEY (tb_cliente_Id) references tb_cliente (tb_cliente_Id),
		CONSTRAINT fk_tb_credito_Producto FOREIGN KEY (tb_producto_Id)references tb_producto (tb_producto_Id),
		CONSTRAINT chk_credito_Id CHECK (tb_credito_Id>0)
)

INSERT INTO tb_credito(tb_cliente_Id,tb_producto_Id,tb_credito_Cantidad,tb_credito_Subtotal,tb_credito_Fecha,tb_credito_Hora)
VALUES(4,1,'2','1.4','12/05/2016','06:08:07');

INSERT INTO tb_credito(tb_cliente_Id,tb_producto_Id,tb_credito_Cantidad,tb_credito_Subtotal,tb_credito_Fecha,tb_credito_Hora)
VALUES(2,3,'4','3.0','11/05/2016','06:09:07');

INSERT INTO tb_credito(tb_cliente_Id,tb_producto_Id,tb_credito_Cantidad,tb_credito_Subtotal,tb_credito_Fecha,tb_credito_Hora)
VALUES(2,2,'5','2.2','1/05/2016','06:08:07');

INSERT INTO tb_credito(tb_cliente_Id,tb_producto_Id,tb_credito_Cantidad,tb_credito_Subtotal,tb_credito_Fecha,tb_credito_Hora)
VALUES(1,5,'3','4.5','17/05/2016','06:08:07');

INSERT INTO tb_credito(tb_cliente_Id,tb_producto_Id,tb_credito_Cantidad,tb_credito_Subtotal,tb_credito_Fecha,tb_credito_Hora)
VALUES(3,1,'7','4.9','14/05/2016','06:08:07');


























select *

SELECT* 
from tb_cliente inner join tb_credito
on tb_credito.tb_cliente_Id = tb_cliente.tb_cliente_Id
where tb_cliente.tb_cliente_id = (select tb_cliente_id as ID
from tb_cliente
where tb_cliente_nombre = 'YOMAR' and tb_cliente_appaterno = 'COTRINA' and tb_cliente_apmterno = 'LOZANO')



select *
from tb_producto
where tb_producto_Nombre = 'YOMAR'

select tb_cliente_id as ID
from tb_cliente
where tb_cliente_nombre = 'YOMAR' and tb_cliente_appaterno = 'COTRINA' and tb_cliente_apmterno = 'LOZANO'

select *
from tb_credito
where tb_credito_Nombre = 'YOMAR'

SELECT tb_cliente.tb_cliente_Nombre,
	tb_producto.tb_producto_nombre,
	tb_producto.tb_producto_nombre,
	tb_credito.tb_credito_Subtotal
from tb_credito INNER JOIN tb_cliente on (tb_credito.tb_cliente_Id=tb_cliente.tb_cliente_Id),
	tb_producto on (tb_credito.tb_producto_id=tb_producto.tb_producto_id)

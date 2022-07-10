/* trigger 1*/
create trigger trMensStockMin
on articulo
after update
as 
begin
 declare @stockmin int, @cantarticulos int
 set @stockmin  = (select stock_min from inserted)
 set @cantarticulos = (select cantidad from inserted)		
if(@cantarticulos = @stockmin ) 
begin
 print('se necesita agregar mas articulos, pues se ha alcanzado la cantidad minima')
end	
end
go

/* trigger 2*/
create trigger trDetalleFactura
on detalle_factura
after insert
as
begin
 declare @cantidad int, @num_articulo int, @nueva_cantidad int
 set @nueva_cantidad = (select top(1) cantidad from inserted)  
 set @num_articulo= (select top(1) id_articulo from inserted)
update articulo
 set cantidad = cantidad - @nueva_cantidad
 where id_articulo = @num_articulo
end
go

/* trigger 3*/
create trigger trEliminarProveedor
on proveedor
after delete as
begin
  insert into proveedor_historial 
  select * from deleted		
end
go 
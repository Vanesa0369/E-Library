CREATE PROCEDURE insert_ShopCart
@OrderID nvarchar(50),
@BookID nvarchar(50),
@BookTitle nvarchar(50),
@Price money,
@Qty int 
as
BEGIN 
declare @msg nvarchar(20)
begin try
insert into ShopCart(OrderID, BookID, BookTitle,Price,Qty)
Values (@OrderID, @BookID, @BookTitle, @Price, @Qty)
end try
begin catch
set @msg='Записът не може да бъде добавен!'
raiserror(@msg, 16, 1)
Return
END catch
end


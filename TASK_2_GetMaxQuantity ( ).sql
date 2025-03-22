use littlelemondm;
create procedure GetMaxQuantity()
select max(Quantity) as 'Max Quantity In Order'
from Orders;
Call GetMaxQuantity();
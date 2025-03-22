use littlelemondm;
delimiter //
create procedure AddBooking(in booking_id int, in customer_id int, in table_number int, in booking_date date)
begin
    declare table_count INT;
    declare booking_status varchar(100) default concat('Table ',table_number,' is already booked - booking cancelled');
    declare Confirmation varchar (50) default 'New Booking added';
        start transaction;
    select count(*) into table_count
    from Bookings
    where booking_date = Date and table_number = TableNo;
    if table_count > 0 then
        rollback;
		select booking_status as 'Booking Status';
    else
        insert into Bookings
        values (booking_id, booking_date, table_number, customer_id);
        commit;
	select Confirmation;
    end if;
end//
delimiter ;
call AddBooking(30, 99, 1,'2022-11-14');
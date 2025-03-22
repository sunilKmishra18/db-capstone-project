use littlelemondm;
delimiter //
create procedure ManageBooking(in booking_date date, in table_number int)
begin
    declare booking_status varchar(100);
    select
        case
            when count(*) > 0 then concat('Table ',table_number,' is already booked')
            else 'Available to Book'
        end into booking_status
    from Bookings
    where booking_date = Date and table_number = TableNo;
    select booking_status as 'Booking status';
end //
delimiter ;
call ManageBooking('2022-11-12',3);
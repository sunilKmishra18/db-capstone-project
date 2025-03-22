use littlelemondm;
delimiter //
create procedure CancelBooking (in booking_id int)
begin
declare Confirmation varchar(50) default concat('Booking ',booking_id,' cancelled');
	delete from Bookings
    where booking_id = BookingID;
    select Confirmation;
end//
delimiter ;
call CancelBooking (30);
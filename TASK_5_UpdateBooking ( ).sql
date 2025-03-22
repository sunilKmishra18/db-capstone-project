use littlelemondm;
delimiter //
create procedure UpdateBooking (in booking_id int, in booking_date date)
begin
declare Confirmation varchar(50) default concat('Booking ',booking_id,' updated');
	update Bookings
    set Date = booking_date
    where BookingID = booking_id;
    select Confirmation;
end//
delimiter ;
call UpdateBooking (30, '2022-11-11');
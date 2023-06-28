use airticketmanagement;
INSERT INTO passengers (id, full_name, phone_number, birthday, sex, address, identification, email)
VALUES ('P001', 'Nguyen Van A', '0123456789', '1990-01-01', 'Nam', '123 Street, City', 'ABC123', 'john@example.com');

INSERT INTO passengers (id, full_name, phone_number, birthday, sex, address, identification, email)
VALUES ('P002', 'Duy Loc', '0123456789', '1990-01-01', 'Nam', '123 Đường Phan Thanh, Thành phố Đà Nẵng', 'ABC123', 'john@example.com');

INSERT INTO passengers (id, full_name, phone_number, birthday, sex, address, identification, email)
VALUES ('P003', 'Nguyễn Xuân Mai', '0123456789', '1990-01-01', 'Nữ', '123 Đường Phan Thanh, Thành phố Đà Nẵng', 'ABC123', 'john1@example.com');
INSERT INTO passengers (id, full_name, phone_number, birthday, sex, address, identification, email)
VALUES ('P004', 'Nguyễn Thành Nam', '0123456789', '1990-01-01', 'Nam', '123 Đường Phan Thanh, Thành phố Đà Nẵng', 'ABC123', 'john1@example.com');


INSERT INTO flights (id, airplane_name, departure_city, arrival_city, departure_time, arrival_time, available_seats, total_seats)
VALUES ('F001', 'VN123', 'TP HCM', 'Vung Tau', '2023-06-21 10:00:00', '2023-06-21 12:00:00', 100, 200);

INSERT INTO flights (id, airplane_name, departure_city, arrival_city, departure_time, arrival_time, available_seats, total_seats)
VALUES ('F002', 'Chuyến bay 2', 'Đà Nẵng', 'Hà Nội', '2023-06-21 10:00:00', '2023-06-21 12:00:00', 100, 200);

INSERT INTO flights (id, airplane_name, departure_city, arrival_city, departure_time, arrival_time, available_seats, total_seats)
VALUES ('F003', 'VN123', 'Vung Tau', 'TP HCM', '2023-06-21 10:00:00', '2023-06-21 12:00:00', 100, 200);

INSERT INTO flights (id, airplane_name, departure_city, arrival_city, departure_time, arrival_time, available_seats, total_seats)
VALUES ('F004', 'Chuyến bay 2', 'Đà Nẵng', 'Hà Nội', '2023-06-21 10:00:00', '2023-06-21 12:00:00', 100, 200);

INSERT INTO flightseatsinformations (flight_id, seat_type, amount, price)
VALUES ('F004', "Fist",10,4500000);
INSERT INTO flightseatsinformations (flight_id, seat_type, amount, price)
VALUES ('F004', "Business ",20,2338000);
INSERT INTO flightseatsinformations (flight_id, seat_type, amount, price)
VALUES ('F004', "Premium  ",30,1859000);
INSERT INTO flightseatsinformations (flight_id, seat_type, amount, price)
VALUES ('F004', "Premium  ",40,1359000);


INSERT INTO flightseatsinformations (flight_id, seat_type, amount, price)
VALUES ('F003', "Fist",10,4500000);
INSERT INTO flightseatsinformations (flight_id, seat_type, amount, price)
VALUES ('F003', "Business ",20,2338000);
INSERT INTO flightseatsinformations (flight_id, seat_type, amount, price)
VALUES ('F003', "Premium  ",30,1859000);
INSERT INTO flightseatsinformations (flight_id, seat_type, amount, price)
VALUES ('F003', "Premium  ",40,1359000);

INSERT INTO flightseatsinformations (flight_id, seat_type, amount, price)
VALUES ('F002', "Fist",10,4500000);
INSERT INTO flightseatsinformations (flight_id, seat_type, amount, price)
VALUES ('F002', "Business ",20,2338000);
INSERT INTO flightseatsinformations (flight_id, seat_type, amount, price)
VALUES ('F002', "Premium  ",30,1859000);
INSERT INTO flightseatsinformations (flight_id, seat_type, amount, price)
VALUES ('F002', "Premium  ",40,1359000);

INSERT INTO flightseatsinformations (flight_id, seat_type, amount, price)
VALUES ('F001', "Fist",10,4500000);
INSERT INTO flightseatsinformations (flight_id, seat_type, amount, price)
VALUES ('F001', "Business ",20,2338000);
INSERT INTO flightseatsinformations (flight_id, seat_type, amount, price)
VALUES ('F001', "Premium  ",30,1859000);
INSERT INTO flightseatsinformations (flight_id, seat_type, amount, price)
VALUES ('F001', "Premium  ",40,1359000);



INSERT INTO payments (id, payment_method, payment_date, email, address, total, status)
VALUES ('PAY001', 'Credit Card', '2023-06-21 13:00:00', 'john@example.com', '456 Street, City', 100.0, 'Paid');

INSERT INTO payments (id, payment_method, payment_date, email, address, total, status)
VALUES ('PAY002', 'Thẻ tín dụng', '2023-06-21 13:00:00', 'john@example.com', '456 Đường, Thành phố', 100.0, 'Đã thanh toán');



INSERT INTO tickets (id, passenger_id, flight_id, payment_id, seat_type, ticket_status, order_time, isRound_trip)
VALUES ('T001', 'P001', 'F001', 'PAY001', 'Economy', 'Confirmed', '2023-06-21 10:00:00', 1);


INSERT INTO tickets (id, passenger_id, flight_id, payment_id, seat_type, ticket_status, order_time, isRound_trip)
VALUES ('T003', 'P003', 'F002', 'PAY002', 'Phổ thông', 'Xác nhận', '2023-06-21 10:00:00', 0);

INSERT INTO tickets (id, passenger_id, flight_id, payment_id, seat_type, ticket_status, order_time, isRound_trip)
VALUES ('T004', 'P004', 'F002', 'PAY002', 'Phổ thông', 'Xác nhận', '2023-06-21 10:00:00', 0);
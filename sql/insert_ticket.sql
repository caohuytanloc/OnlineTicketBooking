use airticketmanagement;
INSERT INTO passengers (id, full_name, phone_number, birthday, sex, address, identification, email)
VALUES ('P001', 'Nguyen Van A', '0123456789', '1990-01-01', 'Nam', '123 Street, City', 'ABC123', 'john@example.com');

INSERT INTO passengers (id, full_name, phone_number, birthday, sex, address, identification, email)
VALUES ('P002', 'Duy Loc', '0123456789', '1990-01-01', 'Nam', '123 Đường Phan Thanh, Thành phố Đà Nẵng', 'ABC123', 'john@example.com');

INSERT INTO flights (id, airplane_name, departure_city, arrival_city, departure_time, arrival_time, available_seats, total_seats)
VALUES ('F001', 'VN123', 'TP HCM', 'Vung Tau', '2023-06-21 10:00:00', '2023-06-21 12:00:00', 100, 200);

INSERT INTO flights (id, airplane_name, departure_city, arrival_city, departure_time, arrival_time, available_seats, total_seats)
VALUES ('F002', 'Chuyến bay 2', 'Đà Nẵng', 'Hà Nội', '2023-06-21 10:00:00', '2023-06-21 12:00:00', 100, 200);

INSERT INTO payments (id, payment_method, payment_date, email, address, total, status)
VALUES ('PAY001', 'Credit Card', '2023-06-21 13:00:00', 'john@example.com', '456 Street, City', 100.0, 'Paid');

INSERT INTO payments (id, payment_method, payment_date, email, address, total, status)
VALUES ('PAY002', 'Thẻ tín dụng', '2023-06-21 13:00:00', 'john@example.com', '456 Đường, Thành phố', 100.0, 'Đã thanh toán');

INSERT INTO tickets (id, passenger_id, flight_id, payment_id, seat_type, ticket_status, order_time, isRound_trip)
VALUES ('T001', 'P001', 'F001', 'PAY001', 'Economy', 'Confirmed', '2023-06-21 10:00:00', 1);

INSERT INTO tickets (id, passenger_id, flight_id, payment_id, seat_type, ticket_status, order_time, isRound_trip)
VALUES ('T002', 'P002', 'F002', 'PAY002', 'Phổ thông', 'Xác nhận', '2023-06-21 10:00:00', 1);
use airticketmanagement;
INSERT INTO passengers (id, full_name, phone_number, birthday, sex, address, identification, email)
VALUES ('P001', 'Khách 1', '0123456789', '1990-01-01', 'Nam', '123 Street, City', 'ABC123', '18130128@st.hcmuaf.edu.vn');

INSERT INTO passengers (id, full_name, phone_number, birthday, sex, address, identification, email)
VALUES ('P002', 'Khách 2', '0123456789', '1990-01-01', 'Nam', '123 Street, City', 'ABC123', '18130128@st.hcmuaf.edu.vn');

INSERT INTO passengers (id, full_name, phone_number, birthday, sex, address, identification, email)
VALUES ('P003', 'Khách 3', '0123456789', '1990-01-01', 'Nam', '123 Street, City', 'ABC123', '18130128@st.hcmuaf.edu.vn');

INSERT INTO passengers (id, full_name, phone_number, birthday, sex, address, identification, email)
VALUES ('P004', 'Khách 4', '0123456789', '1990-01-01', 'Nam', '123 Street, City', 'ABC123', '18130128@st.hcmuaf.edu.vn');

INSERT INTO flights (id, airplane_name, departure_city, arrival_city, departure_time, arrival_time, available_seats, total_seats)
VALUES ('F001', 'VN123', 'Đà Nẵng', 'Hà Nội', '2023-06-21 10:00:00', '2023-06-21 12:00:00', 100, 200);

INSERT INTO flights (id, airplane_name, departure_city, arrival_city, departure_time, arrival_time, available_seats, total_seats)
VALUES ('F002', 'VN102', 'Hà Nội', 'Hải Phòng', '2023-06-21 10:00:00', '2023-06-21 12:00:00', 100, 200);

INSERT INTO payments (id, payment_method, payment_date, email, address, total, status)
VALUES ('PAY001', 'Credit Card', '2023-06-21 13:00:00', 'john@example.com', '456 Street, City', 100.0, 'Paid');

INSERT INTO payments (id, payment_method, payment_date, email, address, total, status)
VALUES ('PAY002', 'Credit Card', '2023-06-21 13:00:00', 'john@example.com', '456 Street, City', 100.0, 'Paid');

INSERT INTO payments (id, payment_method, payment_date, email, address, total, status)
VALUES ('PAY003', 'Credit Card', '2023-06-21 13:00:00', 'john@example.com', '456 Street, City', 100.0, 'Paid');

INSERT INTO payments (id, payment_method, payment_date, email, address, total, status)
VALUES ('PAY004', 'Credit Card', '2023-06-21 13:00:00', 'john@example.com', '456 Street, City', 100.0, 'Paid');

INSERT INTO tickets (id, passenger_id, flight_id, payment_id, seat_type, ticket_status, order_time, isRound_trip)
VALUES ('T001', 'P001', 'F001', 'PAY001', 'Economy', 'Confirmed', '2023-06-21 10:00:00', 1);

INSERT INTO tickets (id, passenger_id, flight_id, payment_id, seat_type, ticket_status, order_time, isRound_trip)
VALUES ('T002', 'P002', 'F001', 'PAY002', 'Economy', 'Confirmed', '2023-06-21 10:00:00', 1);

INSERT INTO tickets (id, passenger_id, flight_id, payment_id, seat_type, ticket_status, order_time, isRound_trip)
VALUES ('T003', 'P003', 'F001', 'PAY003', 'Economy', 'Confirmed', '2023-06-21 10:00:00', 1);

INSERT INTO tickets (id, passenger_id, flight_id, payment_id, seat_type, ticket_status, order_time, isRound_trip)
VALUES ('T004', 'P004', 'F001', 'PAY004', 'Economy', 'Confirmed', '2023-06-21 10:00:00', 1);

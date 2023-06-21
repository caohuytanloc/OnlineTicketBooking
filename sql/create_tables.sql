create database AirTicketManagement;
USE AirTicketManagement;

CREATE TABLE passengers (
  id VARCHAR(20) PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  phone_number VARCHAR(10) NOT NULL,
  birthday DATETIME NOT NULL,
  sex VARCHAR(3),
  address VARCHAR(100),
  identification VARCHAR(20) NOT NULL,
  email VARCHAR(100) NOT NULL
);

CREATE TABLE flights (
  id VARCHAR(20) PRIMARY KEY,
  airplane_name VARCHAR(20) NOT NULL,
  departure_city VARCHAR(50) NOT NULL,
  arrival_city VARCHAR(20) NOT NULL,
  departure_time DATETIME NOT NULL,
  arrival_time DATETIME NOT NULL,
  available_seats INT NOT NULL,
  total_seats INT NOT NULL
);

CREATE TABLE flightSeatsInformations (
  flight_id VARCHAR(20),
  seat_type VARCHAR(10) NOT NULL,
  amount INT,
  price FLOAT,
  FOREIGN KEY (flight_id) REFERENCES flights(id)
);

CREATE TABLE payments (
  id VARCHAR(20) PRIMARY KEY,
  payment_method VARCHAR(100) NOT NULL,
  payment_date DATETIME,
  email VARCHAR(100) NOT NULL,
  address VARCHAR(100),
  total FLOAT,
  status VARCHAR(20)
);

CREATE TABLE services (
  id VARCHAR(20) NOT NULL,
  service_name VARCHAR(20) NOT NULL,
  price FLOAT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE tickets (
  id VARCHAR(20) PRIMARY KEY,
  passenger_id VARCHAR(20),
  flight_id VARCHAR(20) NOT NULL,
  payment_id VARCHAR(20) NOT NULL,
  seat_type VARCHAR(10) NOT NULL,
  ticket_status VARCHAR(20) NOT NULL,
  order_time DATETIME,
  isRound_trip BIT,
  FOREIGN KEY (passenger_id) REFERENCES passengers(id),
  FOREIGN KEY (flight_id) REFERENCES flights(id),
  FOREIGN KEY (payment_id) REFERENCES payments(id)
);

CREATE TABLE orderServices (
  ticket_id VARCHAR(20) NOT NULL,
  service_id VARCHAR(20) NOT NULL,
  quantity INT,
  PRIMARY KEY (ticket_id, service_id),
  FOREIGN KEY (ticket_id) REFERENCES tickets(id),
  FOREIGN KEY (service_id) REFERENCES services(id)
);

CREATE TABLE invoices (
  id VARCHAR(20) PRIMARY KEY,
  invoice_date DATETIME,
  invoice_total INT
);

CREATE TABLE users (
  id VARCHAR(20) PRIMARY KEY,
  username VARCHAR(40) NOT NULL,
  password VARCHAR(40) NOT NULL,
  birthday DATETIME,
  phone_number VARCHAR(10),
  email VARCHAR(100)
);

CREATE TABLE invoiceDetail (
  invoice_id VARCHAR(20) NOT NULL,
  ticket_id VARCHAR(20) NOT NULL,
  user_id VARCHAR(20) NOT NULL,
  payment_id VARCHAR(20) NOT NULL,
  FOREIGN KEY (invoice_id) REFERENCES invoices(id),
  FOREIGN KEY (ticket_id) REFERENCES tickets(id),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (payment_id) REFERENCES payments(id)
);

CREATE TABLE checkin (
  id VARCHAR(20) PRIMARY KEY,
  ticket_id VARCHAR(20) NOT NULL,
  checkin_date DATETIME NOT NULL,
  seat_number VARCHAR(10),
  gate_number VARCHAR(10),
  FOREIGN KEY (ticket_id) REFERENCES tickets(id)
);

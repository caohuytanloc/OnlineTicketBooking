
use AirTicketManagement;

create table passengers(
id Varchar(20) PRIMARY KEY,
full_name VARCHAR(100) not null,
phone_number VARCHAR(10) not null,
birthday DATETIME not null,
sex varchar(3),
address VARCHAR(100),
identification varchar (20) not null,
email VARCHAR(100) not null
);
CREATE TABLE flights(
id varchar(20) PRIMARY KEY,
airplane_name VARCHAR(20) NOT NULL,
departure_city VARCHAR(50) NOT NULL,
arrival_city VARCHAR(20) NOT NULL,
departure_time DATETIME not null,
arrival_time DATETIME not null,
avaiable_seats INT NOT NULL,
total_seats INT NOT NULL
);

CREATE table filghtSeatsInformations(
flight_id VARCHAR(20),
seat_type VARCHAR(10) not null,
amount INT,
price float,
 FOREIGN KEY (flight_id) REFERENCES flights(id)
);

CREATE TABLE payments(
id VARCHAR(20) PRIMARY KEY,
payment_method VARCHAR(100) NOT NULL,
payment_date DATETIME,
email VARCHAR(100) NOT NULL,
address VARCHAR(100),
total FLOAT,
status VARCHAR(20)
);
CREATE TABLE services (
 id VARCHAR(20) NOT NULL ,
  service_name VARCHAR(20) NOT NULL,
  price FLOAT NOT NULL,
  PRIMARY KEY (id)
);


create table tickets(
id Varchar(20) PRIMARY KEY,
passenger_id VARCHAR(20),
flight_id VARCHAR(20) not null,
payment_id VARCHAR(20) NOT NULL,
seat_type varchar(10) not null,
ticket_status VARCHAR(20) NOT NULL,
order_time DATETIME ,
isRound_trip BIT,
 FOREIGN KEY (passenger_id) REFERENCES passengers(id),
  FOREIGN KEY (flight_id) REFERENCES flights(id),
    FOREIGN KEY (payment_id) REFERENCES payments(id)

);

create table orderServices (
  ticket_id VARCHAR(20) NOT NULL,
  service_id VARCHAR(20) NOT NULL,
  quantity INT ,
  PRIMARY KEY (ticket_id, service_id),
  FOREIGN KEY (ticket_id) REFERENCES tickets(id),
  FOREIGN KEY (service_id) REFERENCES services(id)
);
 CREATE TABLE invoices(
 id varchar(20) PRIMARY KEY,
 invoice_date DATETIME,
 invoice_total INT
 
 );
 CREATE TABLE users (
  id VARCHAR(20) PRIMARY KEY ,
  username VARCHAR(40) NOT NULL,
   password VARCHAR(40) NOT NULL,
   birthday Datetime,	
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
CREATE TABLE accounts (
    user_id varchar(20) not null,
    pass varchar(20) not null,
    id varchar(20) primary key,
    mail varchar(30) not null,
    phone varchar(20) not null,
    inSell varchar(20),
    inAdmin varchar(20)
);

select * from accounts;
insert into accounts 
values ('2','admin','xinh521999@gmail.com','0844362969','111111','0','1' );
delete from accounts where id='01';
update accounts set mail='xinh521999@gmail.com', phone='0844362969'
where id='admin';
select * from flights;

insert into flights 
values ("12345", "VietJet", "Cần Thơ", "TP Hồ Chí Minh", '2023-04-25', '2023-04-25', 0, 60);
insert into flights 
values ("12344", "VietJet", "Hà Nôi", "TP Hồ Chí Minh", '2023-04-22', '2023-04-22', 0, 50);
insert into flights 
values ("12343", "VietJet", "Đà Lạt", "TP Hồ Chí Minh", '2023-06-27', '2023-06-27', 0, 50);
insert into flights 
values ("12341", "VietJet", "TP Hồ Chí Minh","Hà Nôi",  '2023-06-12', '2023-06-12', 0, 60);
insert into flights 
values ("12340", "VietJet", "TP Hồ Chí Minh","Cần Thơ",  '2023-07-01', '2023-07-01', 0, 60);
insert into flights 
values ("12346", "VietJet", "TP Hồ Chí Minh","Nha Trang",  '2023-05-09', '2023-05-09', 0, 60);



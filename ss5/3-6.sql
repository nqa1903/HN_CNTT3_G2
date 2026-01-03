drop database if exists order_db;
create database order_db;
use order_db;

create table orders(
	order_id int auto_increment primary key,
    customer_name varchar(255) not null,
    total_amount decimal(10,2) not null,
    status varchar(255) not null,
    created_at datetime not null
);

insert into orders(customer_name , total_amount , status , created_at) values
('Nguyen Van A', 500000, 'completed', '2025-01-01 10:00:00'),
('Tran Thi B', 320000, 'pending',   '2025-01-02 09:30:00'),
('Le Van C',    150000, 'cancelled','2025-01-03 08:20:00'),
('Pham Thi D',  890000, 'completed', '2025-01-04 11:45:00'),
('Hoang Van E', 420000, 'pending',   '2025-01-05 14:10:00'),
('Nguyen Van F',210000, 'completed', '2025-01-06 16:00:00'),
('Tran Thi G',  670000, 'pending',   '2025-01-07 18:30:00'),
('Le Van H',    300000, 'completed', '2025-01-08 09:00:00'),
('Pham Thi I',  760000, 'pending',   '2025-01-09 20:15:00'),
('Hoang Van K', 990000, 'completed', '2025-01-10 21:40:00'),
('Nguyen Van L',450000, 'pending',   '2025-01-11 07:10:00');

select * from orders where status <> 'cancelled' order by created_at desc limit 5 offset 0;

select * from orders where status <> 'cancelled' order by created_at desc limit 5 offset 5;

select * from orders where status <> 'cancelled' order by created_at desc limit 5 offset 10;

drop database if exists product_db;
create database product_db;
use product_db;

create table products(
	product_id int auto_increment primary key,
    product_name varchar(255) not null,
    price decimal(10,2) not null,
    status varchar(50) not null,
    created_at datetime not null
);

insert into products (product_name , price , status , created_at) values 
('Laptop Dell',        2500000, 'active',   '2025-01-01 10:00:00'),
('Laptop HP',          3200000, 'active',   '2025-01-02 09:00:00'),
('Laptop Asus',        1800000, 'active',   '2025-01-03 11:30:00'),
('Laptop Lenovo',      1500000, 'inactive', '2025-01-04 14:20:00'),
('Laptop MSI',         2700000, 'active',   '2025-01-05 08:10:00'),
('Laptop Acer',        1200000, 'active',   '2025-01-06 16:45:00'),
('Laptop MacBook',     3000000, 'active',   '2025-01-07 19:00:00'),
('Laptop Samsung',     1000000, 'active',   '2025-01-08 09:50:00'),
('Laptop LG',          2200000, 'inactive', '2025-01-09 21:30:00'),
('Laptop Huawei',      1400000, 'active',   '2025-01-10 07:15:00'),
('Laptop Xiaomi',      2000000, 'active',   '2025-01-11 13:40:00'),
('Laptop Razer',       2800000, 'active',   '2025-01-12 18:25:00');

select * from products where status = 'active' and price between 1000000 and 3000000 order by price asc limit 10 offset 0;

select * from products where status = 'active' and price between 1000000 and 3000000 order by price asc limit 10 offset 10;
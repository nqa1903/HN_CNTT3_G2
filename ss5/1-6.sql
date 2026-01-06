drop database if exists product_db;
create database product_db;
use product_db;

create table products(
	product_id int auto_increment primary key,
    product_name varchar(255) not null,
    price decimal(10,2) not null,
    stock int not null,
    status enum('active' , 'inactive') not null,
    sold_quantity int default 0
);

insert into products(product_name , price , stock , status , sold_quantity) values 
('iPhone 15', 25000000, 10, 'active', 120),
('Samsung Galaxy S23', 18000000, 5, 'active', 95),
('Xiaomi Redmi Note 12', 6000000, 20, 'active', 150),
('Laptop Dell Inspiron', 22000000, 3, 'inactive', 30),
('Tai nghe Bluetooth', 900000, 50, 'active', 200),
('Chuột không dây Logitech', 700000, 40, 'active', 180),
('Bàn phím cơ Keychron', 2500000, 15, 'active', 90),
('iPad Gen 10', 12000000, 8, 'inactive', 60),
('Apple Watch Series 9', 11000000, 6, 'active', 85),
('Sạc dự phòng Anker', 1200000, 30, 'active', 140);

select * from products;

select * from products where status = 'active';

select * from products where price > 1000000;

select * from products where status = 'active' order by price asc;

select * from products order by sold_quantity desc limit 10;

select * from products order by sold_quantity desc limit 5 offset 10;

select * from products where price < 2000000 order by sold_quantity desc
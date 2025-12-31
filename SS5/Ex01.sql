create database session05;
use session05;

create table products(
product_id int primary key auto_increment,
product_name varchar(255),
price decimal(10,2),
stock int,
product_status enum('active','inactive')
);

insert into products (product_name, price, stock, product_status)
values
('ao thun', 1500000.00, 50, 'active'),
('quan jean', 3500000.00, 30, 'active'),
('giay the thao', 8000000.00, 20, 'active'),
('mu luoi trai', 900000.00, 100, 'inactive'),
('tui xach', 4500000.00, 15, 'active');

select product_id,product_name,price,stock,product_status
from products;

select product_id,product_name,price,stock,product_status
from products
where product_status='active';

select product_id,product_name,price,stock,product_status
from products
where price>1000000;

select product_id,product_name,price,stock,product_status
from products
order by price;
drop database if exists ecommerce_db;
create database ecommerce_db;
use ecommerce_db;

create table customers(
	customer_id int auto_increment primary key,
    full_name varchar(255) not null,
    city varchar(255)
);

create table orders(
	order_id int auto_increment primary key,
    customer_id int,
    order_date date,
    status enum('pending' , 'completed' , 'cancelled'),
    foreign key (customer_id) references customers(customer_id)
);

create table products(
	product_id int auto_increment primary key,
    product_name varchar(255) not null,
    price decimal(10, 2) not null
);

create table order_items(
	order_id int,
    product_id int,
    quantity int not null,
    primary key(order_id , product_id),
    foreign key(order_id) references orders(order_id),
    foreign key(product_id) references products(product_id)
);

insert into customers (full_name , city) values 
('Nguyễn Văn A', 'Hà Nội'),
('Trần Thị B', 'TP HCM'),
('Lê Văn C', 'Đà Nẵng'),
('Phạm Thị D', 'Hà Nội'),
('Hoàng Văn E', 'Cần Thơ');

insert into orders (customer_id , order_date , status) values
(1, '2025-01-01', 'completed'),
(1, '2025-01-05', 'pending'),
(2, '2025-01-03', 'completed'),
(3, '2025-01-07', 'cancelled'),
(1, '2025-01-10', 'completed');

insert into products (product_name , price) values
('Laptop', 20000000),
('Chuột không dây', 500000),
('Bàn phím cơ', 1500000),
('Màn hình', 4000000),
('Tai nghe', 1200000);

insert into order_items (order_id , product_id , quantity) values
(1, 1, 1),   -- Laptop
(1, 2, 2),   -- Chuột
(2, 3, 1),   -- Bàn phím
(3, 4, 1),   -- Màn hình
(5, 1, 1),   -- Laptop
(5, 5, 2);   -- Tai nghe

select 
	o.order_id,
    c.full_name,
    o.order_date,
    o.status
from orders o
join customers c
on o.customer_id = c.customer_id;

select 
	c.customer_id,
    c.full_name,
    count(o.order_id) as total_orders
from customers c
left join orders o
on c.customer_id = o.customer_id
group by c.customer_id , c.full_name;

select 
	c.customer_id,
    c.full_name,
    count(o.order_id) as total_orders
from customers c
join orders o
on c.customer_id = o.customer_id
group by c.customer_id , c.full_name
having count(o.order_id) >= 1;

alter table orders
add column total_amount decimal(10,2);

update orders set total_amount = 1500000 where order_id = 1;
update orders set total_amount = 2200000 where order_id = 2;
update orders set total_amount = 1800000 where order_id = 3;
update orders set total_amount = 900000 where order_id = 4;
update orders set total_amount = 3000000 where order_id = 5;

select 
	c.customer_id,
    c.full_name,
    sum(o.total_amount) as total_spent
from customers c
join orders o
on c.customer_id = o.customer_id
group by c.customer_id , c.full_name;

select 
	c.customer_id,
    c.full_name,
    max(o.total_amount) as max_order_value
from customers c
join orders o
on c.customer_id = o.customer_id
group by c.customer_id , c.full_name;

select 
	c.customer_id,
    c.full_name,
    sum(o.total_amount) as total_spend
from customers c
join orders o
on c.customer_id = o.customer_id
group by c.customer_id , c.full_name
order by total_spend asc;

select 
	order_date,
    sum(total_amount) as total_day
from orders
where status = 'completed'
group by order_date;

select 
	order_date,
    count(order_id) as total_orders
from orders
where status = 'completed'
group by order_date;

select 
	order_date,
    sum(total_amount) as total_day
from orders
where status = 'completed'
group by order_date
having sum(total_amount) >= 10000000;

select 
	p.product_id,
    p.product_name,
    sum(oi.quantity) as total_sold
from products p
join order_items oi
on p.product_id = oi.product_id
group by p.product_id, p.product_name;

select
	p.product_id,
    p.product_name,
    sum(p.price * oi.quantity) as total_day
from products p
join order_items oi
on p.product_id = oi.product_id
group by p.product_id , p.product_name;

select 
	p.product_id,
    p.product_name,
    sum(p.price * oi.quantity) as total_day
from products p
join order_items oi
on p.product_id = oi.product_id
group by p.product_id , p.product_name
having sum(p.price * oi.quantity) > 5000000;

select 
	c.customer_id,
    c.full_name,
    count(o.order_id) as total_orders,
    sum(o.total_amount) as total_spend,
    avg(o.total_amount) as avg_order_value
from customers c
join orders o
on c.customer_id = o.customer_id
where o.status = 'completed'
group by c.customer_id , c.full_name
having count(o.order_id) >= 3
	and sum(o.total_amount) > 10000000
order by total_spend desc;

select 
	p.product_name,
    sum(oi.quantity) as total_quantity_sold,
    sum(oi.quantity * p.price) as total_day,
    avg(p.price) as avg_price
from products p 
join order_items oi
	on p.product_id = oi.product_id
join orders o
	on oi.order_id = o.order_id
where o.status = 'completed'
group by p.product_id , p.product_name
having sum(oi.quantity) >= 10
order by total_day desc
limit 5;
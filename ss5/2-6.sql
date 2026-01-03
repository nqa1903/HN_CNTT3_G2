drop database if exists customer_db;
create database customer_db;
use customer_db;

create table customers(
	customer_id int auto_increment primary key,
    full_name varchar(255) not null,
    email varchar(255) not null,
    check(email like '%@gmail.com'),
    city varchar(255) not null,
    status enum('active' , 'inactive') not null
);

insert into customers (full_name , email , city , status) values
('Nguyễn Văn An', 'an@gmail.com', 'TP.HCM', 'active'),
('Trần Thị Bình', 'binh@gmail.com', 'Hà Nội', 'active'),
('Lê Văn Cường', 'cuong@gmail.com', 'Đà Nẵng', 'inactive'),
('Phạm Thị Dung', 'dung@gmail.com', 'TP.HCM', 'inactive'),
('Hoàng Văn Em', 'em@gmail.com', 'Hà Nội', 'active');

select * from customers;

select * from customers where city = 'TP.HCM';

select * from customers where status = 'active' and city = 'Hà Nội';

select * from customers order by SUBSTRING_INDEX(full_name, ' ', -1) asc; 
-- substring_index(cot , ' ' , -1) Lấy từ cuối cùng trong chuỗi

create table orders(
	order_id int auto_increment primary key,
    customer_id int not null,
    total_amount decimal(10,2) not null,
    order_date date not null,
    status enum('pending' , 'completed' , 'cancelled') not null,
    
    constraint fk_orders_customers
	foreign key (customer_id)
    references customers(customer_id)
);

insert into orders (customer_id , total_amount , order_date , status) values 
(1, 3200000, '2024-12-01', 'completed'),
(2, 7800000, '2024-12-05', 'completed'),
(3, 1500000, '2024-12-10', 'pending'),
(1, 9200000, '2024-12-15', 'completed'),
(4, 4500000, '2024-12-18', 'cancelled'),
(2, 6100000, '2024-12-20', 'completed'),
(5, 2800000, '2024-12-22', 'pending');

select * from orders;

select * from orders where total_amount > 5000000;

select * from orders order by order_date desc limit 5;

select * from orders where status = 'completed' order by total_amount desc;
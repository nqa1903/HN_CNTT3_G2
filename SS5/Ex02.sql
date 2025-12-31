create database session05;
use session05;

create table customers(
customer_id int primary key auto_increment,
full_name varchar(255),
email varchar(255) unique,
city varchar(255),
customer_status enum('active','inactive')
);

insert into customers (full_name, email, city, customer_status)
values
('nguyen van an', 'an@gmail.com', 'ha noi', 'active'),
('tran thi binh', 'binh@gmail.com', 'da nang', 'active'),
('le van cuong', 'cuong@gmail.com', 'ho chi minh', 'inactive'),
('pham thi dieu', 'dieu@gmail.com', 'can tho', 'active'),
('hoang van em', 'em@gmail.com', 'hai phong', 'active'),
('vo thi gia han', 'han@gmail.com', 'ha noi', 'inactive'),
('do van khanh', 'khanh@gmail.com', 'ha noi', 'active');

select customer_id,full_name,email,city,customer_status 
from customers;

select customer_id,full_name,email,city,customer_status 
from customers
where city = 'ho chi minh';

select customer_id,full_name,email,city,customer_status 
from customers
where customer_status ='active' and city ='ha noi';

select customer_id,full_name,email,city,customer_status 
from customers
order by full_name;
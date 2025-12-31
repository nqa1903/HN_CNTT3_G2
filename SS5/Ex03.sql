use session05;

create table orders (
order_id int primary key auto_increment,
customer_id int,
total_amount decimal(10,2),
order_date date,
status enum('pending','completed','cancelled')
);

insert into orders (customer_id, total_amount, order_date, status)
values
(1, 500000.00, '2025-01-01', 'completed'),
(2, 750000.00, '2025-01-02', 'pending'),
(3, 1200000.00, '2025-01-03', 'completed'),
(4, 300000.00, '2025-01-04', 'cancelled'),
(5, 950000.00, '2025-01-05', 'pending'),
(1, 400000.00, '2025-01-06', 'completed');


select order_id,customer_id,total_amount,order_date,status
from orders
where status='completed';

select order_id,customer_id,total_amount,order_date,status
from orders
where total_amount > 5000000;

select order_id,customer_id,total_amount,order_date,status
from orders
limit 5;

select order_id,customer_id,total_amount,order_date,status
from orders
where status='completed'
order by total_amount desc;
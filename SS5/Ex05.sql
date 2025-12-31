use session05;

insert into orders (customer_id, total_amount, order_date, status)
values
(1, 450000.00, '2025-01-07', 'completed'),
(2, 320000.00, '2025-01-08', 'pending'),
(3, 980000.00, '2025-01-09', 'completed'),
(4, 150000.00, '2025-01-10', 'cancelled'),
(5, 670000.00, '2025-01-11', 'pending'),
(6, 890000.00, '2025-01-12', 'completed'),
(7, 230000.00, '2025-01-13', 'completed'),
(1, 540000.00, '2025-01-14', 'pending'),
(2, 760000.00, '2025-01-15', 'completed'),
(3, 410000.00, '2025-01-16', 'cancelled'),
(4, 820000.00, '2025-01-17', 'completed'),
(5, 290000.00, '2025-01-18', 'pending'),
(6, 610000.00, '2025-01-19', 'completed'),
(7, 470000.00, '2025-01-20', 'completed'),
(1, 930000.00, '2025-01-21', 'pending');

select * from orders
where status <>'cancelled'
limit 5;

select * from orders
where status <>'cancelled'
limit 5 offset 5;

select * from orders
where status <>'cancelled'
limit 5 offset 10;
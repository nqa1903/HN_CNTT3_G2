use session05;

alter table products
add column sold_quantity int default 0;

insert into products (product_name, price, stock, product_status, sold_quantity)
values
('ao so mi', 250000.00, 40, 'active', 12),
('quan tay', 400000.00, 25, 'active', 8),
('giay da nam', 900000.00, 18, 'active', 15),
('that lung da', 180000.00, 60, 'active', 20),
('vi da', 220000.00, 50, 'active', 17),
('ao khoac', 650000.00, 22, 'inactive', 5),
('chan vay', 300000.00, 35, 'active', 9),
('balo', 550000.00, 28, 'active', 14),
('kinh mat', 200000.00, 45, 'active', 11),
('dong ho', 1200000.00, 10, 'inactive', 6);

select * from products
order by sold_quantity desc
limit 10;

select * from products
order by sold_quantity desc
limit 5 offset 10;

select * from products
where price < 2000000
order by sold_quantity desc;

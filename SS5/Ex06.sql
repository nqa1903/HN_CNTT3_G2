use session05;

insert into products (product_name, price, stock, product_status, sold_quantity)
values
('ao polo', 2800000.00, 45, 'active', 18),
('quan short', 2000000.00, 60, 'active', 22),
('giay sneaker', 9500000.00, 20, 'active', 16),
('tat chan', 500000.00, 150, 'active', 40),
('ao len', 4200000.00, 25, 'inactive', 7),
('bop vi nam', 1900000.00, 55, 'active', 19),
('tui deo cheo', 3800000.00, 30, 'active', 13),
('non ket', 1200000.00, 70, 'active', 27),
('ao vest', 12500000.00, 12, 'inactive', 4),
('vali du lich', 18000000.00, 8, 'active', 6);

select * from products
where product_status ='active' and price between 1000000 and 3000000
order by price
limit 10;

select * from products
where product_status ='active' and price between 1000000 and 3000000
order by price
limit 10 offset 10;

-- BÀI TẬP: DANH SÁCH SẢN PHẨM TRONG CỬA HÀNG

-- Tạo bảng products
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255),
    price DECIMAL(10,2),
    stock INT,
    status ENUM('active', 'inactive')
);

-- Truy vấn 1: Lấy toàn bộ sản phẩm trong hệ thống
SELECT * FROM products;

-- Truy vấn 2: Lấy danh sách sản phẩm đang bán (status = 'active')
SELECT * FROM products
WHERE status = 'active';

-- Truy vấn 3: Lấy các sản phẩm có giá lớn hơn 1.000.000
SELECT * FROM products
WHERE price > 1000000;

-- Truy vấn 4: Hiển thị sản phẩm đang bán, sắp xếp theo giá tăng dần
SELECT * FROM products
WHERE status = 'active'
ORDER BY price ASC;

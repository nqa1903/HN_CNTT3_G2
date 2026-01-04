
-- BÀI TẬP: QUẢN LÝ KHÁCH HÀNG

-- Tạo bảng customers
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255),
    email VARCHAR(255),
    city VARCHAR(255),
    status ENUM('active', 'inactive')
);

-- 1. Lấy danh sách tất cả khách hàng
SELECT * FROM customers;

-- 2. Lấy khách hàng ở TP.HCM
SELECT * FROM customers
WHERE city = 'TP.HCM';

-- 3. Lấy khách hàng đang hoạt động và ở Hà Nội
SELECT * FROM customers
WHERE status = 'active'
  AND city = 'Hà Nội';

-- 4. Sắp xếp danh sách khách hàng theo tên (A → Z)
SELECT * FROM customers
ORDER BY full_name ASC;

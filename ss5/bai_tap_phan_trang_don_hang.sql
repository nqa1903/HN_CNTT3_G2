-- BÀI TẬP: PHÂN TRANG DANH SÁCH ĐƠN HÀNG
-- Mục tiêu: Sử dụng LIMIT + OFFSET trong bài toán thực tế

-- Giả sử bảng: orders
-- Các cột chính: id, order_date, status
-- status != 'cancelled' nghĩa là đơn hàng chưa bị hủy

-- Mỗi trang hiển thị 5 đơn hàng

-- Trang 1: Hiển thị 5 đơn hàng mới nhất (chưa bị hủy)
SELECT *
FROM orders
WHERE status != 'cancelled'
ORDER BY order_date DESC
LIMIT 5 OFFSET 0;

-- Trang 2: Hiển thị 5 đơn hàng tiếp theo
SELECT *
FROM orders
WHERE status != 'cancelled'
ORDER BY order_date DESC
LIMIT 5 OFFSET 5;

-- Trang 3: Hiển thị 5 đơn hàng tiếp theo
SELECT *
FROM orders
WHERE status != 'cancelled'
ORDER BY order_date DESC
LIMIT 5 OFFSET 10;

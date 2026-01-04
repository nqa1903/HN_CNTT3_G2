-- BÀI TẬP: SẢN PHẨM BÁN CHẠY
-- Mục tiêu: Sử dụng LIMIT và OFFSET, hiểu phân trang dữ liệu

-- Giả sử bảng: products
-- Các cột chính: id, name, price, sold_quantity

-- 1. Lấy 10 sản phẩm bán chạy nhất
SELECT *
FROM products
ORDER BY sold_quantity DESC
LIMIT 10;

-- 2. Lấy 5 sản phẩm bán chạy tiếp theo (bỏ qua 10 sản phẩm đầu)
SELECT *
FROM products
ORDER BY sold_quantity DESC
LIMIT 5 OFFSET 10;

-- 3. Hiển thị danh sách sản phẩm giá < 2.000.000, sắp xếp theo số lượng bán giảm dần
SELECT *
FROM products
WHERE price < 2000000
ORDER BY sold_quantity DESC;

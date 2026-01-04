-- Tạo bảng Subject
CREATE TABLE Subject (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100),
    credit INT CHECK (credit > 0)
);

-- Thêm dữ liệu môn học
INSERT INTO Subject (subject_id, subject_name, credit)
VALUES
(1, 'Cơ sở dữ liệu', 3),
(2, 'Lập trình C', 4),
(3, 'Mạng máy tính', 3);

-- Cập nhật số tín chỉ cho một môn học
UPDATE Subject
SET credit = 5
WHERE subject_id = 2;

-- Đổi tên một môn học
UPDATE Subject
SET subject_name = 'Cơ sở dữ liệu nâng cao'
WHERE subject_id = 1;

-- Hiển thị dữ liệu môn học
SELECT * FROM Subject;

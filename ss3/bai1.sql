-- Tạo bảng Student
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE
);

-- Thêm dữ liệu sinh viên
INSERT INTO Student (student_id, full_name, date_of_birth, email)
VALUES
(1, 'Nguyễn Văn An', '2003-05-12', 'an.nguyen@gmail.com'),
(2, 'Trần Thị Bình', '2002-11-20', 'binh.tran@gmail.com'),
(3, 'Lê Quốc Cường', '2003-02-08', 'cuong.le@gmail.com');

-- Lấy toàn bộ danh sách sinh viên
SELECT * FROM Student;

-- Lấy mã sinh viên và họ tên
SELECT student_id, full_name FROM Student;

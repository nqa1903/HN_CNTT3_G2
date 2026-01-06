CREATE DATABASE course_online;
USE course_online;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100),
    email VARCHAR(255),
    gender ENUM('male','female','other'),
    date_of_birth DATE,
    class_name VARCHAR(20)
);

CREATE TABLE subjects (
    subject_id INT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(255),
    credit_hours INT
);

CREATE TABLE enrollment (
    subject_id INT,
    student_id INT,
    semeter VARCHAR(20),
    regist_date DATETIME,
    PRIMARY KEY (subject_id, student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);


/* ================================
1. THÊM ÍT NHẤT 5 DỮ LIỆU MỖI BẢNG
================================ */

-- Students
INSERT INTO students (full_name, email, gender, date_of_birth, class_name)
VALUES
('Nguyen Van A', 'a@gmail.com', 'male', '2002-01-01', 'CNTT1'),
('Tran Thi B', 'b@gmail.com', 'female', '2001-02-02', 'CNTT1'),
('Le Van C', 'c@gmail.com', 'male', '2000-03-03', 'CNTT2'),
('Pham Thi D', 'd@gmail.com', 'female', '2002-04-04', 'CNTT2'),
('Hoang Van E', 'e@gmail.com', 'other', '2001-05-05', 'CNTT3');

-- Subjects
INSERT INTO subjects (subject_name, credit_hours)
VALUES
('Lập trình C', 3),
('Cơ sở dữ liệu', 3),
('Lập trình Web', 4),
('Cấu trúc dữ liệu', 3),
('Hệ điều hành', 3);

-- Enrollment
INSERT INTO enrollment (subject_id, student_id, semeter, regist_date)
VALUES
(1, 1, 'HK1-2025', NOW()),
(2, 1, 'HK1-2025', NOW()),
(3, 2, 'HK1-2025', NOW()),
(4, 3, 'HK1-2025', NOW()),
(5, 4, 'HK1-2025', NOW());


/* ================================
2. SỬA TÊN SINH VIÊN → THÊM "GIỎI"
Nguyen Van A → Nguyen Van A Giỏi
================================ */
UPDATE students
SET full_name = CONCAT(full_name, ' Giỏi')
WHERE full_name = 'Nguyen Van A';


/* ================================
3. SỬA TÊN MÔN HỌC
"Lập trình C" → "Môn học lập trình C"
================================ */
UPDATE subjects
SET subject_name = 'Môn học lập trình C'
WHERE subject_name = 'Lập trình C';


/* ================================
4. XÓA CÁC MÔN HỌC CÓ MÃ 2, 3
(CẦN XÓA ENROLLMENT TRƯỚC)
================================ */
DELETE FROM enrollment
WHERE subject_id IN (2, 3);

DELETE FROM subjects
WHERE subject_id IN (2, 3);


/* ================================
5. ĐĂNG KÝ MÔN HỌC 1 CHO SINH VIÊN 2
================================ */
INSERT INTO enrollment (subject_id, student_id, semeter, regist_date)
VALUES (1, 2, 'HK1-2025', NOW());


/* ================================
6. HỦY ĐĂNG KÝ MÔN HỌC 1 CHO SINH VIÊN 2
================================ */
DELETE FROM enrollment
WHERE subject_id = 1 AND student_id = 2;


/* ================================
KIỂM TRA LẠI TOÀN BỘ DỮ LIỆU
================================ */
SELECT * FROM students;
SELECT * FROM subjects;
SELECT * FROM enrollment;

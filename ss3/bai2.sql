-- Cập nhật email cho sinh viên có student_id = 3
UPDATE Student
SET email = 'cuong.le_new@gmail.com'
WHERE student_id = 3;

-- Cập nhật ngày sinh cho sinh viên có student_id = 2
UPDATE Student
SET date_of_birth = '2002-10-15'
WHERE student_id = 2;

-- Xóa sinh viên có student_id = 5
DELETE FROM Student
WHERE student_id = 5;

-- Kiểm tra lại dữ liệu
SELECT * FROM Student;

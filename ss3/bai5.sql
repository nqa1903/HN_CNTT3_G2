-- Tạo bảng Score
CREATE TABLE Score (
    student_id INT,
    subject_id INT,
    mid_score DECIMAL(3,1) CHECK (mid_score BETWEEN 0 AND 10),
    final_score DECIMAL(3,1) CHECK (final_score BETWEEN 0 AND 10),
    PRIMARY KEY (student_id, subject_id),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subject(subject_id)
);

-- Thêm điểm cho sinh viên
INSERT INTO Score (student_id, subject_id, mid_score, final_score)
VALUES
(1, 1, 7.5, 8.0),
(1, 2, 6.5, 7.0),
(2, 1, 8.0, 8.5),
(2, 3, 7.0, 9.0);

-- Cập nhật điểm cuối kỳ cho một sinh viên
UPDATE Score
SET final_score = 9.5
WHERE student_id = 1 AND subject_id = 1;

-- Lấy toàn bộ bảng điểm
SELECT * FROM Score;

-- Lấy sinh viên có điểm cuối kỳ từ 8 trở lên
SELECT *
FROM Score
WHERE final_score >= 8;

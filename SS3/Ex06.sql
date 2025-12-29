USE session03;

INSERT INTO Student (full_name, dob, email)
VALUES ('Tran Van G', '2004-12-12', 'gdz@gmail.com');

INSERT INTO Enrollment (student_id, subject_id, enroll_date)
VALUES
    (7, 1, '2024-09-15'),
    (7, 2, '2024-09-15');

INSERT INTO Score (student_id, subject_id, mid_score, final_score)
VALUES
    (7, 1, 7.0, 8.0),
    (7, 2, 6.0, 7.0);

UPDATE Score
SET final_score = 9.0
WHERE student_id = 7 AND subject_id = 1;

DELETE FROM Enrollment
WHERE student_id = 7 AND subject_id = 2;

SELECT
    student_id,
    (SELECT full_name FROM Student WHERE Student.student_id = Score.student_id),
    (SELECT subject_name FROM Subject WHERE Subject.subject_id = Score.subject_id),
    mid_score,
    final_score
FROM Score;

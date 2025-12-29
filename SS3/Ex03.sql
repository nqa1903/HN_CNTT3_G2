use session03;

CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
    credit INT CHECK (credit > 0)
);

INSERT INTO Subjects (subject_id, subject_name, credit)
VALUES
    (1, 'Database Systems', 3),
    (2, 'Data Structures', 4),
    (3, 'Operating Systems', 3);
UPDATE Subjects
SET credit = 5
WHERE subject_id = 2;
UPDATE Subjects
SET subject_name = 'Advanced Database'
WHERE subject_id = 1;

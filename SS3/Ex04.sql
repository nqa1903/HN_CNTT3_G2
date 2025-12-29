use session03;

CREATE TABLE Enrollment (
    student_id INT NOT NULL,
    subject_id INT NOT NULL,
    enroll_date DATE NOT NULL,
    PRIMARY KEY (student_id, subject_id),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);

INSERT INTO Enrollment (student_id, subject_id, enroll_date)
VALUES
    (1, 1, '2024-09-01'),
    (1, 2, '2024-09-01'),
    (2, 1, '2024-09-02'),
    (2, 3, '2024-09-02');

SELECT * FROM Enrollment;

SELECT *
FROM Enrollment
WHERE student_id = 1;

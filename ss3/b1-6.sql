create database exercise_ddl;

use exercise_ddl;

-- ex1
create table student (
	student_id int primary key auto_increment,
    full_name varchar(100) not null,
    date_of_birth date,
    email varchar(100) unique
);

insert into student (full_name , date_of_birth , email) 
values
('student A' , '2025-01-01' , 'studentA@gmail.com'),
('student B' , '2025-02-02' , 'studentB@gmail.com'),
('student C' , '2025-03-03' , 'studentC@gmail.com');

select * from student;

select student_id , full_name from student;

-- ex2
insert into student (full_name , date_of_birth , email) 
values
('student D' , '2025-04-04' , 'studentD@gmail.com'),
('student E' , '2025-05-05' , 'studentE@gmail.com'),
('student F' , '2025-06-06' , 'studentF@gmail.com');

update student set email = 'newemail@gmail.com' where student_id = 3;

update student set date_of_birth = '2000-03-19' where student_id = 2;

delete from student where student_id = 5;

select * from student;

-- ex3
create table Subjects(
	subject_id int primary key auto_increment,
    subject_name varchar(100) unique not null,
    credit int check (credit > 0)
);

insert into Subjects (subject_name , credit) 
values 
('Database Systems', 3),
('Web Programming', 4),
('Data Structures', 3);

update Subjects set credit = 6 where subject_id = 2;

update Subjects set subject_name = 'Front end' where subject_id = 1;

select * from Subjects;

-- ex4
CREATE TABLE Enrollment (
    student_id INT,
    subject_id INT,
    enroll_date DATE NOT NULL,

    PRIMARY KEY (student_id, subject_id),

    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);

INSERT INTO Enrollment (student_id, subject_id, enroll_date)
VALUES
(1, 1, '2025-01-10'),
(1, 2, '2025-01-12'),
(2, 1, '2025-01-11'),
(2, 3, '2025-01-15');

SELECT * 
FROM Enrollment;

SELECT *
FROM Enrollment
WHERE student_id = 1;

-- ex5
CREATE TABLE Score (
    student_id INT,
    subject_id INT,
    mid_score DECIMAL(4,2) CHECK (mid_score BETWEEN 0 AND 10),
    final_score DECIMAL(4,2) CHECK (final_score BETWEEN 0 AND 10),

    PRIMARY KEY (student_id, subject_id),

    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);

INSERT INTO Score (student_id, subject_id, mid_score, final_score)
VALUES
(1, 1, 7.5, 8.0),
(1, 2, 6.0, 7.0),
(2, 1, 8.0, 8.5),
(2, 3, 7.0, 9.0);

UPDATE Score
SET final_score = 8.5
WHERE student_id = 1 AND subject_id = 2;

SELECT * 
FROM Score;

SELECT *
FROM Score
WHERE final_score >= 8;

-- ex6
INSERT INTO student (full_name, date_of_birth, email)
VALUES ('Nguyen Van New', '2002-10-10', 'new.student@gmail.com');

SELECT * FROM student;

INSERT INTO Enrollment (student_id, subject_id, enroll_date)
VALUES
(6, 1, '2025-02-01'),
(6, 2, '2025-02-01');

SELECT * FROM Enrollment
WHERE student_id = 6;

INSERT INTO Score (student_id, subject_id, mid_score, final_score)
VALUES
(6, 1, 7.0, 8.0),
(6, 2, 6.5, 7.5);

UPDATE Score
SET final_score = 8.5
WHERE student_id = 6 AND subject_id = 2;

DELETE FROM Enrollment
WHERE student_id = 6 AND subject_id = 1;

SELECT
    s.student_id,
    s.full_name,
    sub.subject_name,
    sc.mid_score,
    sc.final_score
FROM Score sc
JOIN student s ON sc.student_id = s.student_id
JOIN Subjects sub ON sc.subject_id = sub.subject_id
ORDER BY s.student_id;

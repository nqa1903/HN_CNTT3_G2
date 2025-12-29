CREATE DATABASE SchoolManagement;
USE SchoolManagement;

CREATE TABLE Student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('Nam', 'Nu')),
    email VARCHAR(100) UNIQUE,
    class_name VARCHAR(50)
);

CREATE TABLE Subject (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
    credit_hours INT NOT NULL CHECK (credit_hours > 0)
);

CREATE TABLE Enrollment (
    student_id INT NOT NULL,
    subject_id INT NOT NULL,
    regist DATE NOT NULL DEFAULT CURRENT_DATE,
    semester VARCHAR(20) NOT NULL,

    PRIMARY KEY (student_id, subject_id),

    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subject(subject_id)
);

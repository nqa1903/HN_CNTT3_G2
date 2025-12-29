CREATE DATABASE DEMO_DDL;

USE DEMO_DDL;

CREATE TABLE reports(
	report_id int primary key auto_increment,
    title varchar(255),
    student_name varchar(100),
    created_by varchar(100),
    created_date datetime default current_timestamp
);

-- single
insert into reports (title , student_name , created_by) values ('report_name A' , 'student 1' , 'teacher 1');

-- multiple
insert into reports (title , student_name , created_by) values 
('report_name B' , 'student 2' , 'teacher 2'),
('report_name C' , 'student 3' , 'teacher 3'),
('report_name D' , 'student 4' , 'teacher 4');

SELECT * FROM reports;
SELECT title , student_name , created_date FROM reports;

-- câu lệnh : UPDATE <TABLE_NAME> SET COLUMN 1 = NEW_VALUE 1 , COLUMN 2 = NEW_VALUE 2 , ... WHERE ID = ID CẦN CẬP NHẬP
UPDATE reports SET title = 'report_name update' , student_name = 'student_name update' , created_by = current_date() WHERE report_id = 3;

-- câu lệnh : DELETE FROM <TABLE_NAME> WHERE KHÓA CHÍNH = ID CẦN XÓA
DELETE FROM reports WHERE report_id = 1
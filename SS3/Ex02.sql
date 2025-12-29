
use session03;

create table Student(
       student_id int primary key auto_increment,
       full_name varchar(100) not null,
       dob date not null,
       email varchar(100) unique
);

insert into Student(full_name,dob,email)
values('tran van a','12-02-2015','adz@gmail.com'),
       ('tran van b','12-02-2015','bdz@gmail.com'),
       ('tran van c','12-02-2015','cdz@gmail.com');

update Student
set email='chimtolamemho@gmail.com'
where student_id=3;
update Student
set dob='1-1-2020'
where student_id=2;
delete from Student
where id=5;

select * from Student

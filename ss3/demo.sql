create database course_online;
use course_online;

create table student (
	student_id int primary key auto_increment,
    full_name varchar(100),
    email varchar(255),
    gender enum('male', 'female', 'other')
);
    
    
CREATE TABLE subjects (
	subjects_id int primary key auto_increment
-- 1. Them it nhat 5 du lieu cho moi bang 
-- 2. sua cho ten sinh vien gioi vao sau 
-- 3. sua cho mon hoc lap trinh 
-- 4. xoa nhung mon hoc co ma 2,3
-- 5. dang ky mon hoc 1 cho sinh vien 2 
-- 6. huy dang ky mon hoc 1 cho sinh vien 2 
);

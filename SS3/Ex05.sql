use session03;

create table score(
    student_id int not null,
    subject_id int not null ,
    mid_score float CHECK (mid_score BETWEEN 0 AND 10),
    final_score float CHECK (final_score BETWEEN 0 AND 10),
    primary key (student_id,subject_id),
    foreign key(student_id) references Student(student_id),
    foreign key(subject_id) references Subjects(subject_id)
);
INSERT INTO Score (student_id, subject_id, mid_score, final_score)
VALUES
    (1, 1, 7.5, 8.0),
    (1, 2, 6.0, 7.0),
    (2, 1, 8.0, 9.0),
    (2, 3, 7.0, 8.5);

UPDATE Score
SET final_score = 9.5
WHERE student_id = 1 AND subject_id = 1;

SELECT * FROM Score;

SELECT *
FROM Score
WHERE final_score >= 8;
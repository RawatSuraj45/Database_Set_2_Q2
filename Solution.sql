CREATE DATABASE Student ;
USE student;
CREATE TABLE student_detail(
	id int ;
    student = varchar(25);
  	PRIMARY KEY(id);
);
INSERT INTO student_detail(1 , 'Abbot');
INSERT INTO student_detail(2 , 'Doris');
INSERT INTO student_detail(3 , 'Emerson');
INSERT INTO student_detail(4 , 'Green');
INSERT INTO student_detail(5 , 'Jeames');

SELECT * FROM student_detail;

SELECT
    CASE
        WHEN (SELECT MAX(id) FROM seat) % 2 = 1 AND s.id = (SELECT MAX(id) FROM seat) THEN s.id 
        WHEN s.id % 2 = 1 THEN s.id + 1  
        ELSE s.id - 1  
    END AS id,
    s.student
FROM seat s
ORDER BY id;
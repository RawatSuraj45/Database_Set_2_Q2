CREATE DATABASE Student ;
USE Student;
CREATE TABLE seat(
	id int ;
  student = varchar(25);
  PRIMARY KEY(id);
);
INSERT INTO seat(1 , 'Abbot');
INSERT INTO seat(2 , 'Doris');
INSERT INTO seat(3 , 'Emerson');
INSERT INTO seat(4 , 'Green');
INSERT INTO seat(5 , 'Jeames');

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
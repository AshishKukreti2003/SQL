CREATE DATABASE college2;
USE college2;
-- JOINS
CREATE TABLE student(
	student_id INT NOT NULL,
    name VARCHAR(30)
);

INSERT INTO student VALUES
(101,"adam"),
(102,"bob"),
(103,"casey");

SELECT * FROM student;

CREATE TABLE course(
	student_id INT NOT NULL,
    course VARCHAR(50)
);

INSERT INTO course VALUES
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer science");

SELECT * FROM course;

-- INNER JOIN
SELECT * FROM student
INNER JOIN course
ON 
student.student_id = course.student_id;

-- OR

SELECT * FROM student as s
INNER JOIN course as c
ON
s.student_id = c.student_id;

-- Left Join
SELECT * FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id;

-- Right Join
SELECT * FROM student AS s
RIGHT JOIN course AS c
ON s.student_id = c.student_id;

-- Full Join
SELECT * FROM student AS s
LEFT JOIN course AS c
ON s.student_id = c.student_id
UNION
SELECT * FROM student AS s
RIGHT JOIN course AS c
ON s.student_id = c.student_id;

-- LEFT Exclusive
select * from student as s
left join course as c
on s.student_id = c.student_id
where c.student_id IS NULL;

-- Right Exclusive
select * from student as s
Right join course as c
on s.student_id = c.student_id
WHERE s.student_id IS NULL;

-- Full exclusive join
select * from student as s
Left join course as c
ON s.student_id = c.student_id
Where c.student_id is null
UNION
select * from student as s
right join course as c
on s.student_id = c.student_id
Where s.student_id is NUll;

-- Self Join
USE College2;
CREATE table employee(
	id INT primary key,
    name Varchar(30),
    manager_id int
);

INSERT INTO employee VALUES
(101,"adam",103),
(102,"bob","104"),
(103,"casey",null),
(104,"donald",103);

SELECT * FROM employee;

SELECT a.name as manager_name, b.name
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

-- UNION (Unique Values)
Select student_id from course
UNION
Select student_id from student;

Select * from course;
Select * from student;

-- Union All(All Values)
Select student_id from course
Union All
Select student_id from student;

-- SubQuery
CREATE table students_data(
	rollno INT PRIMARY KEY,
    name varchar(30),
    marks INT NOT NULL
);

INSERT INTO students_data VALUES
(101,"anil",78),
(102,"bhumika",93),
(103,"chetan",85),
(104,"dhruv", 96),
(105,"emanuel",92),
(106,"farah",82);

Select * from students_data;

Select avg(marks) from students_data;

Select name, marks From students_data
WHERE marks > (Select Avg(marks) from students_data);

Select rollno From students_data
Where rollno % 2 = 0;

Select name, rollno From students_data
Where rollno IN (102,104,106);

Select name, rollno 
FRom students_data
Where rollno IN(
	Select rollno 
    From students_data
    Where rollno % 2 = 0
);

Alter table students_data Add Column city Varchar(50);

UPDATE students_data SET city = 'Pune' WHERE rollno = 101;
UPDATE students_data SET city = 'Mumbai' WHERE rollno = 102;
UPDATE students_data SET city = 'Delhi' WHERE rollno = 103;
UPDATE students_data SET city = 'Delhi' WHERE rollno = 104;
UPDATE students_data SET city = 'Delhi' WHERE rollno = 105;
UPDATE students_data SET city = 'Delhi' WHERE rollno = 106;

Select * from students_data;

Select Max(marks) from students_data Where city = "Delhi";

Select Max(marks) from(Select * from students_data Where city = "Delhi") As temp;

-- Views

Create View view1 AS
Select rollno, name FROM students_data;

Select * from view1;

DROP VIEW view1;






CREATE DATABASE temp;
DROP DATABASE temp;

CREATE DATABASE college;

USE college;

CREATE TABLE student( 
	id INT PRIMARY KEY,
    name VARCHAR (50),
    age INT NOT NULL
); 

INSERT INTO student VALUES(1,"Ashish", 21);
INSERT INTO student VALUES(2,"Arnav", 20);

SELECT * FROM student;

SHOW DATABASES;

SHOW TABLES;

INSERT INTO student
(id,name,age)
VALUES
(3,"Ujjwal",20),
(4,"Ashutosh",21),
(5,"OP", 30);


CREATE DATABASE XYZ;

USE XYZ;

CREATE TABLE DB(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

INSERT INTO DB
(id, name, salary)
VALUES
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000);

SELECT * FROM db;

CREATE DATABASE college1;

USE college1;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

Show tables;

INSERT INTO student 
(rollno, name, marks, grade, city) 
VALUES
(101,"anil", 78,"C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan",85,"B","Delhi"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi"); 

ALTER TABLE student ADD COLUMN age INT;

UPDATE student SET age = 15 WHERE rollno = 101;
UPDATE student SET age = 18 WHERE rollno = 102;
UPDATE student SET age = 16 WHERE rollno = 103;
UPDATE student SET age = 17 WHERE rollno = 104;
UPDATE student SET age = 19 WHERE rollno = 105;
UPDATE student SET age = 17 WHERE rollno = 106;


ALTER TABLE students DROP COLUMN new_age;

ALTER TABLE students RENAME TO student;

ALTER TABLE student CHANGE COLUMN age new_age INT DEFAULT 0;

INSERT INTO student (rollno, name, marks, grade, city) VALUES(107,"OP",98,"A","UP");

ALTER TABLE student MODIFY new_age INT;

UPDATE student SET new_age = 9000 WHERE rollno = 107;

-- Practice question
USE college1;
ALTER TABLE student CHANGE COLUMN name full_name VARCHAR(30); 

DELETE FROM student WHERE marks < 80;

ALTER TABLE student DROP COLUMN grade;

SELECT rollno,name,grade FROM students;
Select * from student;

DELETE FROM student WHERE rollno = 107;


Select * FROM student WHERE marks > 80;

SELECT * FROM student WHERE marks > 80 AND city = "Delhi";


Select city, AVG(marks)
FROM student 
GROUP BY city 
ORDER BY AVG(marks);

SELECT city,count(rollno)
FROM student
GROUP BY city
HAVING max(marks) > 90;

SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) > 90
ORDER BY city ASC;


SET SQL_SAFE_UPDATEs = 0;

UPDATE student
SET grade = "O"
WHERE grade = "A";

SELECT * FROM student;

USE college1;

CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO dept VALUES
(101, "english"),
(102, "IT");

UPDATE dept
SET id = 104
WHERE id = 101;

DELETE FROM dept WHERE id = 104;

SELECT * FROM dept;

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    foreign key (dept_id) references dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

DROP TABLE teacher;

INSERT INTO teacher
VALUES
(101,"Adam",101),
(102,"Eve",103);

DELETE FROM teacher
WHERE dept_id = 103;

SELECT * FROM teacher;




  

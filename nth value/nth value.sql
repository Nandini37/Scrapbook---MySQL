

drop database project2;  -- drop if exist

Create database project2;

use project2;

drop table student ;

CREATE TABLE student (
    student_id INT ,
    student_name VARCHAR(50),
    major VARCHAR(50),
    batch INT
);


INSERT INTO student(student_id, student_name, major, batch)
VALUES (2, 'Dave', 'Medicine', 2017);

INSERT INTO student(student_id, student_name, major, batch)
VALUES (100, 'Jack', 'Arts', 2010);

INSERT INTO student(student_id, student_name, major, batch)
VALUES (12, 'Rose', 'Computer', 2012);

INSERT INTO student(student_id, student_name, major, batch)
VALUES (44, 'John', 'Economics', 2018);

INSERT INTO student(student_id, student_name, major, batch)
VALUES (55, 'Joe', 'Robotics', 2015);


SELECT * FROM project2.student;

-- Implementation ROW_NUMBER to returns 5th row of the table
SELECT *
FROM (
  SELECT ROW_NUMBER() OVER (ORDER BY student_id) AS row_num
             , student_id
             , student_name
             , major
             , batch
  FROM student
) AS sub
WHERE row_num = 5;


SELECT *
FROM ( SELECT
 ROW_NUMBER() OVER (ORDER BY student_id) AS row_id,
student_name 
FROM student)
AS sub
WHERE row_id = 3;


-- Implementation of the LIMIT… OFFSET… clause in MySQL to return 5th row of the table
-- Here, LIMIT 1 suggests to return only one row from the query
-- And, OFFSET 4 suggests to discard top 4 rows. 
-- So, the combination of LIMIT 1 OFFSET 4 will effectively return only 5th row


SELECT
               student_id
              , student_name
              , major
              , batch
  FROM student
  ORDER By student_id
  LIMIT 1 OFFSET 4  
  
 -- Thus to formulate to return nth col put offset n-1 column to your data





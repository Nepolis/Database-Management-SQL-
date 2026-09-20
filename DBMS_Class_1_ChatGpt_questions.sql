-- 1
CREATE Table Student
(STU_ID varchar(20) PRIMARY KEY,
FNAME varchar(10),
LNAME varchar(10),
CLASS varchar(10),
DOB date,
DEPT varchar(15),
PHNO varchar(10),
CITY varchar(15),
STATE varchar(15))
;
DROP TABLE STUDENT;
-- 2
INSERT INTO STUDENT
(STU_ID, FNAME, LNAME, CLASS, DOB, DEPT, PHNO, CITY, STATE)
VALUES
(101, 'Aarav', 'Sharma', 'B.Tech', '2007-04-19', 'CSE', '9876543210', 'Mumbai', 'Maharashtra'),
(102, 'Riya', 'Patel', 'B.Tech', '2006-08-12', 'IT', '9876543211', 'Pune', 'Maharashtra'),
(103, 'Aditya', 'Verma', 'B.Tech', '2007-01-25', 'CSE', '9876543212', 'Delhi', 'Delhi'),
(104, 'Ananya', 'Singh', 'B.Tech', '2006-11-03', 'AI-ML', '9876543213', 'Mumbai', 'Maharashtra'),
(105, 'Rahul', 'Gupta', 'B.Tech', '2007-06-15', 'ECE', '9876543214', 'Jaipur', 'Rajasthan'),
(106, 'Sneha', 'Joshi', 'B.Tech', '2006-09-21', 'CSE', '9876543215', 'Pune', 'Maharashtra'),
(107, 'Arjun', 'Mehta', 'B.Tech', '2007-02-10', 'IT', '9876543216', 'Ahmedabad', 'Gujarat'),
(108, 'Priya', 'Shah', 'B.Tech', '2006-12-18', 'CSE', '9876543217', 'Mumbai', 'Maharashtra'),
(109, 'Karan', 'Malhotra', 'B.Tech', '2007-07-30', 'AI-ML', '9876543218', 'Delhi', 'Delhi'),
(110, 'Neha', 'Kapoor', 'B.Tech', '2006-05-14', 'ECE', '9876543219', 'Kolkata', 'West Bengal');
-- 3
Select FNAME,LNAME,DEPT,CITY
From Student;
-- 4
Select * From Student;
-- 5 
Select * From Student
Order by FNAME ASC
;
#6
Select * From Student
Order by FNAME desc
;
#7
Select FNAME ,LNAME,PHNO 
From Student
WHere DEPT = 'CSE'
;
# 8
Select * 
From Student
Where DEPT = 'CSE' AND CITY = 'Mumbai'
;
#9
Select *
From Student
WHere DEPT = 'CSE' or DEPT = 'IT'
;
#10
Select * 
From Student
Where DEPT != 'CSE'
;
#11
Select *
From Student
Order by State ASC, FNAME ASC
;
#13
Select * 
From Student 
Where FNAME LIKE 'A%'
;
#14
Select * 
From Student 
Where FNAME LIKE '%a'
;
#18
Select * 
From Student 
Where LNAME LIKE '_____'
;

Show tables;

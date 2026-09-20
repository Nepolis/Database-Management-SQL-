CREATE TABLE STUDENT (
    STU_ID INT PRIMARY KEY,
    FNAME VARCHAR(30),
    LNAME VARCHAR(30),
    GENDER VARCHAR(10),
    AGE INT,
    DEPT VARCHAR(30),
    SEMESTER INT,
    EMAIL VARCHAR(50),
    PHONE VARCHAR(15),
    CITY VARCHAR(30),
    STATE VARCHAR(30),
    CGPA DECIMAL(3,2)
);
INSERT INTO STUDENT
(STU_ID, FNAME, LNAME, GENDER, AGE, DEPT, SEMESTER, EMAIL, PHONE, CITY, STATE, CGPA)
VALUES
(101, 'Rahul', 'Sharma', 'Male', 20, 'CSE', 4, 'rahul@gmail.com', '9876543210', 'Mumbai', 'Maharashtra', 8.25),

(102, 'Priya', 'Patel', 'Female', 19, 'IT', 2, 'priya@gmail.com', '9876543211', 'Indore', 'Madhya Pradesh', 9.10),

(103, 'Aman', 'Verma', 'Male', 21, 'CSE', 4, 'aman@gmail.com', '9876543212', 'Delhi', 'Delhi', 7.85),

(104, 'Sneha', 'Gupta', 'Female', 20, 'ECE', 4, 'sneha@gmail.com', '9876543213', 'Pune', 'Maharashtra', 8.75),

(105, 'Rohan', 'Singh', 'Male', 22, 'ME', 6, 'rohan@gmail.com', '9876543214', 'Bhopal', 'Madhya Pradesh', 7.20),

(106, 'Anjali', 'Mehta', 'Female', 19, 'CSE', 2, 'anjali@gmail.com', '9876543215', 'Mumbai', 'Maharashtra', 9.35),

(107, 'Karan', 'Joshi', 'Male', 21, 'IT', 6, 'karan@gmail.com', '9876543216', 'Jaipur', 'Rajasthan', 6.95),

(108, 'Neha', 'Shah', 'Female', 20, 'ECE', 4, 'neha@gmail.com', '9876543217', 'Ahmedabad', 'Gujarat', 8.40),

(109, 'Vikas', 'Yadav', 'Male', 19, 'CSE', 2, 'vikas@gmail.com', '9876543218', 'Gwalior', 'Madhya Pradesh', 7.65),

(110, 'Pooja', 'Malhotra', 'Female', 22, 'IT', 6, 'pooja@gmail.com', '9876543219', 'Chandigarh', 'Punjab', 8.90),

(111, 'Arjun', 'Kapoor', 'Male', 20, 'CSE', 4, 'arjun@gmail.com', '9876543220', 'Delhi', 'Delhi', 8.55),

(112, 'Simran', 'Kaur', 'Female', 21, 'ECE', 6, 'simran@gmail.com', '9876543221', 'Amritsar', 'Punjab', 7.95);


#Creating a Table
CREATE table STUDENT;

#Showing the Table 
Select * FROM Student;
Select FNAME,
LNAME,
Age,
Age + 10 From Student;
select distinct Dept from Student;

#Distinct Keyword - For Getting the Quene Values 

Select distinct age From Student;

#Where  
 
 Select * From Student
 where Semester > 4;

#any exp

Select * From Student
Where Gender != 'Male';

# --And and NOT OR -- LOGICAL Operators

Select * From Student
Where Gender != 'Male'
And Age > 19
;

Select * From Student
Where Gender = 'Male'
OR CGPA > 8
;

Select * From Student
Where CGPA >=  8
OR NOt Gender = 'Female'
;

Select * From Student
Where (Gender = 'Male' AND CGPA > 5)
OR DEPT = "CSE"
;

#--Like Statement--  
Select * From Student
Where FNAME LIKE '%R%'
 ;
 
 Select * From Student
Where LNAME Like 'S%'
;

-- Group By-It is Going to group together rows That have the Same values in the specified colums or columns you are grouping on 
-- When we group them together we can something known as aggreagate function on the rows 

Select gender,AVG(age),Min(Cgpa),Max(Cgpa),count(Cgpa)
 From Student
Group BY gender;

-- Order by 

Select * 
From Student
order by AGe Asc;

Select * From Student 
order by gender , age Desc
;

 
-- Having vs Where = We Use the having Clause to filter out the aggregate functions 
-- It Comes after Order by functiion 

Select State ,Avg(Cgpa)
From Student
Where State Like '%M%'
group by State 
HAving AVG(CGPA) > 8
; 


-- Limit and Aliasing 
-- Limit = it specifys how many rows you want in your output 

#in this To a specfiy no of  things we use and the first parameter of Limit is for showing how many elements you want 
Select * 
From Student
Order by CGPA Desc
Limit 2
; 

#The second case for the use of Limit is the First paramter Where you want to start from and the seccond parameter From the first postion how many elements you want to go 
Select * 
From Student
Order by CGPA Desc
Limit 2,1
; 

-- Alising = Now is just a way to change the name of the column and it can also be used in joins 

Select gender , AVG(age) as Avg_age 
From student
Group by gender
Having Avg_age > 19
;

-- We are here using a differnt dataset here which mostly and approxt to the 4hr course i am watching So for joins i need mutiple so we are switch before here 
-- Everthing works fine and at the end they are all just concepts 


CREATE TABLE employee_demographics (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    birth_date DATE
);

INSERT INTO employee_demographics
(employee_id, first_name, last_name, age, gender, birth_date)
VALUES
(1, 'Leslie', 'Knope', 44, 'Female', '1979-09-25'),
(3, 'Tom', 'Haverford', 36, 'Male', '1987-03-04'),
(4, 'April', 'Ludgate', 29, 'Female', '1994-03-27'),
(5, 'Jerry', 'Gergich', 61, 'Male', '1962-08-28'),
(6, 'Donna', 'Meagle', 46, 'Female', '1977-07-30'),
(7, 'Ann', 'Perkins', 35, 'Female', '1988-12-01'),
(8, 'Chris', 'Traeger', 43, 'Male', '1980-11-11'),
(9, 'Ben', 'Wyatt', 38, 'Male', '1985-07-26'),
(10, 'Andy', 'Dwyer', 34, 'Male', '1989-03-25'),
(11, 'Mark', 'Brendanawicz', 40, 'Male', '1983-06-14'),
(12, 'Craig', 'Middlebrooks', 37, 'Male', '1986-07-27');

CREATE TABLE employee_salary (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    occupation VARCHAR(100),
    salary INT,
    dept_id INT
);
INSERT INTO employee_salary
(employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES
(1, 'Leslie', 'Knope', 'Deputy Director of Parks and Recreation', 75000, 1),
(2, 'Ron', 'Swanson', 'Director of Parks and Recreation', 70000, 1),
(3, 'Tom', 'Haverford', 'Entrepreneur', 50000, 1),
(4, 'April', 'Ludgate', 'Assistant to the Director of Parks and Recreation', 25000, 1),
(5, 'Jerry', 'Gergich', 'Office Manager', 50000, 1),
(6, 'Donna', 'Meagle', 'Office Manager', 60000, 1),
(7, 'Ann', 'Perkins', 'Nurse', 55000, 4),
(8, 'Chris', 'Traeger', 'City Manager', 90000, 3),
(9, 'Ben', 'Wyatt', 'State Auditor', 70000, 6),
(10, 'Andy', 'Dwyer', 'Shoe Shiner and Musician', 20000, NULL),
(11, 'Mark', 'Brendanawicz', 'City Planner', 57000, 3),
(12, 'Craig', 'Middlebrooks', 'Parks Director', 65000, 1);

CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO Department (department_id, department_name)
VALUES
(1, 'Parks and Recreation'),
(2, 'Animal Control'),
(3, 'Public Works'),
(4, 'Healthcare'),
(5, 'Library'),
(6, 'Finance');

-- Joins Joins allow you to joins two tables or more if they have a common  column (not the column name but the data in it)
-- There are two type of joins 
-- 1) Inner Joints 
-- 2) Outer Joints
-- 3) Self Joints 
  
select * From employee_salary;
 
 Select * From employee_demographics;

Select * From Department;

 
 -- Inner Joints : The Inner joints are going to return the rows which are same in both coloumn and table 
 
 select dem.employee_id ,age, occupation  
 From employee_salary As Sal 
 Inner Join 
		employee_demographics As dem
		On dem.employee_id = sal.employee_id
;

-- Outer Joints- in outer joints there are two types A left joint and a right joint 
-- Left joint = It will all the all the element of the left table even if there are no matches and the take of the elements of the right table which have matches 
-- Right joint = it is similar to the Left joint Just the opposite 


-- Left Outer 
select * 
 From employee_salary As Sal 
 Left Outer Join 
		employee_demographics As dem
		On dem.employee_id = sal.employee_id
;
-- Right Outer 

select * 
 From employee_salary As Sal 
 Right Outer Join 
		employee_demographics As dem
		On dem.employee_id = sal.employee_id
;


-- Self Join - A Self join is a type of join where you tie a table to itself 

Select *
From employee_salary as emp1
Join employee_salary as emp2 
on emp1.employee_id = emp2.employee_id
;

-- Joining mutiple Table togetTablesher 


 select *  
 From employee_salary As Sal 
 Inner Join 
		employee_demographics As dem
		On dem.employee_id = sal.employee_id
        INNER JOIN 
			Department as dp 
            on Sal.dept_id = dp.department_id
;
 
 Select * From Department;
 
 -- Unions - A Unions allow you to combine rows together like row of data from sepearte Table or from the same table 
 -- A Union is by defaut Distant - means it only takes unique values 
 -- To Remove the distinct unique feature and get the all the values including duplicate 
 -- Use (UNION ALL) 

 -- This is one shows how it is used and how it works
 Select Age, gender 
 From employee_demographics
 Union 
 Select first_name, last_name 
 From employee_salary
 ;
 
 -- this is how it should be used 
 Select first_name, last_name
 From employee_demographics
 Union 
 Select first_name, last_name 
 From employee_salary
 ;
 
 
 -- To Remove the distinct unique feature and get the all the values including duplicate 
 -- Use (UNION ALL) 
 
 Select first_name, last_name
 From employee_demographics
 Union ALL  
 Select first_name, last_name 
 From employee_salary
 ;
 
 -- Use Case 
 -- Need to find The old employee and Highly paid employee 
 
Select first_name ,last_name ,'Old Men' as Label
From employee_demographics
Where age > 40 AND gender = 'Male'
UNION
Select first_name ,last_name ,'Old Female'
From employee_demographics
Where age > 40 AND gender = 'Female'
UNION 
Select first_name ,last_name ,'Highly Paided'  
From employee_salary
Where salary > 70000
Order by first_name,last_name
;  
 
-- String Function
-- String Function are build in function in Sql which help us use string and work with strings differntly 

-- 1) Length - Give the length of the string .
Select Length("Water_bottle");

Select first_name , Length(first_name)
From employee_demographics
order by 2
;

-- 2) Upper - Converts the string in upper case 

Select first_name , Upper(first_name)
From employee_demographics
order by 2
;

-- 3) Lower - Converts the string in lower case

Select first_name , Lower(first_name)
From employee_demographics
order by 2
;

-- 4) Trim - Trim is a string function used to remove unwanted characters, typically whitespace, from the beginning and end of a text string.


Select TRIM("         Sky        ")
;

Select LTRIM("         Sky        ")
;

Select RTRIM("         Sky        ")
;


-- Substring -


Select first_name ,
Left(first_name,4),
Right(first_name,4)
From employee_demographics
order by 2
;

Select first_name ,
Left(first_name,4),
Right(first_name,4),
Substring(first_name,3,2),
birth_date,
Substring(birth_date,6,2) as birth_month # We can it substring to get the specific data we need for data cleaning for requirment
#Here in substring First parameter is For the columns name , Second for how many character to skip and third after skipping how many characters to take 
From employee_demographics
order by 2
;
-- Replace -- Replace will replace specific character with a differnt character that you want 
-- In Replace the three parameter are first for the column name , second for the which to replace and third for wht to replace it with
Select first_name, Replace(first_name,'a','z')
From employee_demographics
;

#Locate

Select Locate('e',"Alexander");

Select first_name, Locate('An',first_name)
From employee_demographics
;

-- CONCAT - Concatenation of mutiple columns -- Simply Combining two tables 
Select first_name, last_name,  
Concat(first_name,' ',last_name) as Full_Name
From employee_demographics
;
Select employee_id,first_name,last_name,
Concat(employee_id,')',' ',first_name,' ',last_name) As Employees
From employee_demographics
;


-- CASE STATEMENT

Select first_name,
last_name,
age,
CASE  
	When age < 30 THEN 'Young'
    When age between 31 and 50 Then 'Old'
    When age >= 50 Then 'On Death Door'
END as Youth
From employee_demographics
Order by age ASC	
;

-- Question 
-- Pay increse and bonus 
-- if made < 50000 = 5%
-- < 70000 = 7%
-- if Finanace = 10%

-- Leave this i am just clearing my mind doubt 
Select * 
From employee_salary as sale
Inner Join  
employee_demographics as demo 
on	sale.employee_id = demo.employee_id
INNER join department as dp 
on sale.dept_id = dp.department_id
;

-- Pay increse and bonus 
-- if made < 50000 = 5%
-- < 70000 = 7%
-- if Finanace = 10%

Select first_name,last_name,salary,dept_id,
CASE
	When salary <= 50000 Then salary + (salary * 0.05)
    When salary > 50000 Then salary + (salary * 0.07)
END as Bonus_salary,
CASE
	When dept_id = 6 then salary * .10
END as Bonus
From employee_salary
;


-- Subqueries - Subquiers are queries inside another quiery


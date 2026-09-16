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



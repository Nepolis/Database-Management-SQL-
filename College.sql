CREATE TABLE employee_demographics (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    JOB varchar(10),
    salary INT,
    PHNO varchar(10),
    City varchar(10),
    State varchar(15)
);
Drop 
 INSERT INTO employee_demographics
(employee_id, first_name, last_name, JOB, salary, PHNO, City, State)
VALUES
(1, 'Rahul', 'Sharma', 'Manager', 65000, '9876543210', 'Mumbai', 'Maharashtra'),
(2, 'Priya', 'Patel', 'Developer', 55000, '9876543211', 'Ahmedabad', 'Gujarat'),
(3, 'Amit', 'Verma', 'Analyst', 48000, '9876543212', 'Delhi', 'Delhi'),
(4, 'Sneha', 'Singh', 'HR', 45000, '9876543213', 'Lucknow', 'UttarPradesh'),
(5, 'Arjun', 'Mehta', 'Tester', 42000, '9876543214', 'Pune', 'Maharashtra'),
(6, 'Neha', 'Gupta', 'Developer', 58000, '9876543215', 'Jaipur', 'Rajasthan'),
(7, 'Vikram', 'Joshi', 'Manager', 72000, '9876543216', 'Indore', 'MadhyaPradesh'),
(8, 'Ananya', 'Khan', 'Designer', 50000, '9876543217', 'Bhopal', 'MadhyaPradesh'),
(9, 'Rohan', 'Malhotra', 'Developer', 62000, '9876543218', 'Bangalore', 'Karnataka'),
(10, 'Kavya', 'Reddy', 'HR', 47000, '9876543219', 'Hyderabad', 'Telangana'),
(11, 'Aditya', 'Nair', 'Analyst', 52000, '9876543220', 'Kochi', 'Kerala'),
(12, 'Pooja', 'Iyer', 'Tester', 44000, '9876543221', 'Chennai', 'TamilNadu'),
(13, 'Karan', 'Kapoor', 'Manager', 68000, '9876543222', 'Chandigarh', 'Punjab'),
(14, 'Simran', 'Kaur', 'Developer', 60000, '9876543223', 'Amritsar', 'Punjab'),
(15, 'Manish', 'Yadav', 'Analyst', 49000, '9876543224', 'Gwalior', 'MadhyaPradesh');


Select  * From employee_demographics
Where length(First_NAME) = (
	Select MAX(length(First_name))
		From employee_demographics)
Order by first_name ASC
;

Select * 
From employee_demographics 
where state is not null
;
 
 
 Create Table Student1(
CREATE DATABASE customer;
 use customer;
 CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age INT,
    Phone VARCHAR(15)
);
INSERT INTO Customers (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES
(1, 'Shubham', 'Thakur', 'India', 23, '764665345'),
(2, 'Aman', 'Chopra', 'Australia', 21, '56532467'),
(3, 'Naveen', 'Tulasi', 'Sri Lanka', 24, '929762663'),
(4, 'Aditya', 'Arpan', 'Austria', 21, '56785567'),
(5, 'Nishant. Salchichas S.A.', 'Jain', 'Spain', 22, '98975455');
CREATE TABLE Customers_India AS
SELECT * FROM Customers WHERE Country = 'India';

CREATE TABLE Teacher (
    TeacherID INT PRIMARY KEY,
    TeacherName VARCHAR(50),
    Subject VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Student (
    Roll INT PRIMARY KEY,
    Name VARCHAR(50),
    Marks INT,
    Grade CHAR(1),
    City VARCHAR(50),
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES Teacher(TeacherID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

INSERT INTO Teacher (TeacherID, TeacherName, Subject, City) VALUES
(101, 'Anita Sharma', 'Maths', 'Delhi'),
(102, 'Rajesh Kumar', 'Science', 'Mumbai'),
(103, 'Pooja Verma', 'English', 'Kolkata');

INSERT INTO Student (Roll, Name, Marks, Grade, City, TeacherID) VALUES
(1, 'Ravi Kumar', 85, 'A', 'Delhi', 101),
(2, 'Priya Singh', 72, 'B', 'Mumbai', 102),
(3, 'Aman Verma', 90, 'A', 'Kolkata', 103),
(4, 'Neha Gupta', 60, 'C', 'Delhi', 101),
(5, 'Arjun Yadav', 78, 'B', 'Mumbai', 102);

select * from Teacher;
DELETE FROM Teacher WHERE TeacherID = 101;  -- ( ON DELETE CASCADE Test) 
--  Teacher table me ID = 101 delete ho jayega
select * from Student;  -- Student table me jinke TeacherID = 101 hai wo automatically delete ho jayenge
UPDATE Teacher SET TeacherID = 202 WHERE TeacherID = 102;










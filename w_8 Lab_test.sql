use cpe;
create table person (
	PersonID int NOT NULL auto_increment,
    Last_name varchar(255) NOT NULL,
    PRIMARY KEY (PersonID)
    );
    
ALTER TABLE persons
ADD FirstName varchar(255),
ADD Gender varchar(1),
ADD dob date,
ADD city varchar(50);
    
create table contacts (
lastName varchar(30) NOT NULL,
FirstName varchar(25) NOT NULL,
birthday DATE,
CONSTRAINT contracts_pk PRIMARY KEY(lastName,FirstName)
);

rename table person to persons;

create table Orders (
	OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);

ALTER table Orders
add amount int,
add discount int;

ALTER table Orders
DROP discount;

ALTER table Orders 
MODIFY amount decimal;

ALTER table Orders
DROP PRIMARY KEY, 
ADD PRIMARY KEY (OrderNumber);

create table product_data (
	productID int
);

use cpe;

CREATE TABLE category_data (
	catID int,
    catName varchar(40)
);

INSERT INTO persons (
	personID,
    FirstName,
    Last_Name,
    Gender,
    dob,
    city
)
VALUE(8,'Baenjamas','Morchuay','F','2003-05-08','Chumporn');

SELECT * FROM persons
AS FNAME ORDER BY personID DESc;  

SELECT distinct FirstName 
FROM persons;

TRUNCATE TABLE persons;

UPDATE persons
SET FirstName = 'Sora',Last_Name = 'Kaminari'
WHERE personID = 2;

create table student(
	studentID int NOT NULL auto_increment,
    FName varchar(50),
    LName varchar(50),
    PRIMARY KEY (studentID)
);

INSERT INTO student (
	studentID,
    FName,
    LName
)
VALUE (006,'Beanjamas','Morchuay');

SELECT count(studentID) 
AS count FROM student;

SELECT studentID,FName,LName, count(studentID) AS NumberOfStudent
FROM student
GROUP BY FName;

create table Employee(
	employeeID int NOT NULL auto_increment,
    FName varchar(50),
    LName varchar(50),
    PRIMARY KEY (employeeID)
);

INSERT INTO Employee (
	employeeID,
    FName,
    LName
)
VALUE (1,'N','H');

SELECT c.customer_fname, c.customer_lname, o.amount
FROM customer c INNER JOIN
(SELECT o.customer_id, o.amount FROM orders o WHERE
o.amount > 1000) o
on c.customer_id = o.customer_id;

create table students (
	id int NOT NULL auto_increment,
    FName varchar(50) ,
    PRIMARY KEY (id)
);

create table city (
	id int NOT NULL auto_increment,
    PRIMARY KEY (id),
    FOREIGN KEY (id) REFERENCES students(id)
)
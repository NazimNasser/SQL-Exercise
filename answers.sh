# Basic Queries

SELECT Name FROM students;
SELECT * FROM students WHERE Age > 30;
SELECT name FROM students WHERE Age=30 AND Gender="F";
SELECT Points FROM students WHERE Name="Alex";
INSERT INTO students VALUES(7,"Nazim",27,"M",500);
UPDATE students SET Points=Points+100 WHERE name="Basma";
UPDATE students SET Points=Points-10 WHERE name="Alex";

# Creating Table

CREATE TABLE graduates 
(
ID INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT NOT NULL UNIQUE,
Age INT,
Gender TEXT,
Points INT,
graduation date
);

# 1

INSERT INTO graduates(Name,Age,Gender,Points)
SELECT name,Age,Gender,Points
FROM students
WHERE name="Layal"

# 2

UPDATE graduates 
SET Graduation = DATE('yyyy-mm-dd')
WHERE Name = "Layal";

# 3

DELETE FROM students WHERE name="Layal";

# Joins
# 1

SELECT employees.name, companies.name, companies.date
FROM employees
join companies
ON employees.Company=companies.name;

# 2

SELECT employees.name FROM employees
join companies
on employees.Company = companies.name WHERE companies.date < 2000;

# 3

SELECT companies.name FROM employees
inner join companies
on employees.Company = companies.name WHERE employees.Role = 'Graphic Designer';


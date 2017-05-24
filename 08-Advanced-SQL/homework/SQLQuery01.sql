-- find the names and salaries of the employees that take the minimal salary in the company
USE TelerikAcademy
SELECT
	FirstName + ' ' + LastName AS [Full Name]
   ,Salary
FROM Employees
WHERE Salary = (SELECT MIN(Salary) FROM Employees)

-- find the names of all employees whose salary is 25000, 14000, 12500 or 23600
USE TelerikAcademy
SELECT FirstName, LastName, Salary FROM Employees
WHERE Salary IN (25000, 14000, 12500, 23600)
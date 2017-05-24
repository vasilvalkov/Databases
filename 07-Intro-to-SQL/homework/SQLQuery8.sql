-- find the names of all employees whose first name starts with "SA"
USE TelerikAcademy
SELECT FirstName + ' ' + LastName AS [Full Name]
FROM Employees
WHERE FirstName LIKE 'sa%'
-- find the names of all employees whose last name contains "ei"
USE TelerikAcademy
SELECT FirstName + ' ' + LastName AS [Full Name]
FROM Employees
WHERE LastName LIKE '%ei%'
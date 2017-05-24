-- find the full name of each employee
USE TelerikAcademy
SELECT FirstName + ' ' + COALESCE(MiddleName, '') + ' ' + LastName AS [Full Name]
FROM Employees
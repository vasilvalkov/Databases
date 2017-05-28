-- find the names of all employees whose last name is exactly 5 characters long. Use the built-in LEN(str) function.
USE TelerikAcademy
SELECT e.FirstName + ' ' + e.LastName AS [Employee]
FROM Employees e
WHERE LEN(e.LastName) = 5
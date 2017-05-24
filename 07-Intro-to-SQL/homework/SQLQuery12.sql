-- find all employees that do not have manager
USE TelerikAcademy
SELECT FirstName, MiddleName, LastName FROM Employees
WHERE ManagerID IS NULL
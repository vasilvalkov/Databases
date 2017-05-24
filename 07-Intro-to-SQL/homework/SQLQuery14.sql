-- find the top 5 best paid employees
USE TelerikAcademy
SELECT TOP 5 FirstName, LastName, Salary FROM Employees
ORDER BY Salary DESC
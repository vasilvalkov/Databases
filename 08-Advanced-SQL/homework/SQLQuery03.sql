-- find the full name, salary and department of the employees that take the minimal salary in their department
USE TelerikAcademy
SELECT FirstName, LastName, d.Name, Salary AS [Lowest Salary]
FROM Employees e
INNER JOIN Departments d
	ON e.DepartmentID = d.DepartmentID
WHERE Salary = 
  (SELECT MIN(Salary) FROM Employees 
   WHERE DepartmentID = e.DepartmentID)
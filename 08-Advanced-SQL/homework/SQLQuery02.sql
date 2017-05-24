-- find the names and salaries of the employees that have a salary that is up to 10% higher than the minimal salary for the company
USE TelerikAcademy
SELECT FirstName, LastName, d.Name, Salary
FROM Employees e
INNER JOIN Departments d
	ON e.DepartmentID = d.DepartmentID
WHERE Salary <=
  (SELECT ((MIN(Salary) / 10.0) + MIN(Salary)) FROM Employees)
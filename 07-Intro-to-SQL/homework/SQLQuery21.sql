-- find the names of all employees from the departments "Sales" and "Finance" whose hire year is between 1995 and 2005
USE TelerikAcademy
SELECT
	e.FirstName + ' ' + e.LastName AS [Employee Name]
   ,d.Name AS [Department]
FROM Employees e
INNER JOIN Departments d
	ON e.DepartmentID = d.DepartmentID
WHERE (d.Name = 'Sales'
OR d.Name = 'Finance')
AND YEAR(e.HireDate) BETWEEN 1995 AND 2005
	
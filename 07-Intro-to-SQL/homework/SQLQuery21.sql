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
	
-- find the number of employees in the "Sales" department.
USE TelerikAcademy
SELECT
	COUNT(*) AS [Number Of Employees]
   ,d.Name AS [Department]
FROM Employees e
INNER JOIN Departments d
	ON e.DepartmentID = d.DepartmentID
WHERE d.Name = 'Sales'
GROUP BY d.Name
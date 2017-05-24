-- find all departments and the average salary for each of them
USE TelerikAcademy
SELECT
	AVG(Salary) [Average Salary],
	d.Name AS [Department]
FROM Employees e
INNER JOIN Departments d
	ON e.DepartmentID = d.DepartmentID
GROUP BY d.Name
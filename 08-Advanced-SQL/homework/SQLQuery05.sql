-- find the average salary  in the "Sales" department
USE TelerikAcademy
SELECT
	AVG(Salary) AS [Average Salary]
   ,d.Name AS [Department]
FROM Employees e
INNER JOIN Departments d
	ON e.DepartmentID = d.DepartmentID
WHERE d.Name = 'Sales'
GROUP BY d.Name
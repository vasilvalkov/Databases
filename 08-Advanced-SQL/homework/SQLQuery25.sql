-- display the average employee salary by department and job title.
USE TelerikAcademy
SELECT AVG(e.Salary) AS [Average Salary], d.DepartmentID, e.JobTitle
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentID, e.JobTitle
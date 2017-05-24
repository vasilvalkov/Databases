-- find the average salary in the department #1
USE TelerikAcademy
SELECT
	AVG(Salary) AS [Average Salary],
	DepartmentID
FROM Employees
WHERE DepartmentID = 1
GROUP BY DepartmentID
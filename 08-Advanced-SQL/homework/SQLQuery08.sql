-- find the number of all employees that have no manager
USE TelerikAcademy
SELECT
	COUNT(*) AS [Number Of Employees]
FROM Employees e
WHERE e.ManagerID IS NULL
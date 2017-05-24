-- find the number of all employees that have manager.
USE TelerikAcademy
SELECT
	COUNT(*) AS [Number Of Employees]
FROM Employees e
WHERE e.ManagerID IS NOT NULL
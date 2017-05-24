-- find all managers that have exactly 5 employees. Display their first name and last name
USE TelerikAcademy
SELECT
	COUNT(*) AS [Employees Count]
   ,m.FirstName + ' ' + m.LastName AS [Manager]
FROM Employees e
INNER JOIN Employees m
	ON e.ManagerID = m.EmployeeID
GROUP BY e.ManagerID
		,m.FirstName
		,m.LastName
HAVING COUNT(*) = 5
USE TelerikAcademy
SELECT e.FirstName + ' ' + e.LastName AS [Employee],
	m.FirstName + ' ' + m.LastName AS [Manager]
FROM Employees e
INNER JOIN Employees m
ON e.ManagerID = m.EmployeeID
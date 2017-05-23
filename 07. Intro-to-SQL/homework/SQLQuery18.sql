USE TelerikAcademy
SELECT e.FirstName + ' ' + e.LastName AS [Employee],
	a.AddressText AS [Address],
	m.FirstName + ' ' + m.LastName AS [Manager]
FROM Employees e
INNER JOIN Employees m
ON e.ManagerID = m.EmployeeID
INNER JOIN Addresses a
ON e.AddressID = a.AddressID
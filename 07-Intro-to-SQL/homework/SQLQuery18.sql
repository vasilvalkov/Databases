-- find all employees, along with their manager and their address. Join the 3 tables: `Employees e`, `Employees m` and `Addresses a`
USE TelerikAcademy
SELECT e.FirstName + ' ' + e.LastName AS [Employee],
	a.AddressText AS [Address],
	m.FirstName + ' ' + m.LastName AS [Manager]
FROM Employees e
INNER JOIN Employees m
ON e.ManagerID = m.EmployeeID
INNER JOIN Addresses a
ON e.AddressID = a.AddressID
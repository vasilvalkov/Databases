-- find the count of all employees in each department and for each town
USE TelerikAcademy
SELECT
	COUNT(*) [Employees Count]
   ,d.Name AS [Department]
   ,t.Name AS [Town]
FROM Employees e
INNER JOIN Departments d
	ON e.DepartmentID = d.DepartmentID
INNER JOIN Addresses a
	ON e.AddressID = a.AddressID
INNER JOIN Towns t
	ON a.TownID = t.TownID
GROUP BY d.Name, t.Name
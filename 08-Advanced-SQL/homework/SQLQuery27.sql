-- display the town where maximal number of employees work
SELECT TOP 1
	t.Name,
	COUNT(e.EmployeeID) AS [Employees count]
FROM Employees e
INNER JOIN Addresses a
	ON e.AddressID = a.AddressID
INNER JOIN Towns t
	ON a.TownID = t.TownID
GROUP BY t.Name
ORDER BY [Employees count] DESC
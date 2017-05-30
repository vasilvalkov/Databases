-- display the number of managers from each town
SELECT
	t.Name,
	COUNT(DISTINCT e.EmployeeID) AS [Managers count]
FROM Employees e
INNER JOIN Addresses a
	ON e.AddressID = a.AddressID
INNER JOIN Towns t
	ON a.TownID = t.TownID
WHERE e.EmployeeId IN (SELECT e2.ManagerID FROM Employees e2)
GROUP BY t.Name
-- find all employees along with their managers. For employees that do not have manager display the value "(no manager)"
USE TelerikAcademy
SELECT e.FirstName + ' ' + e.LastName AS [Employee],
	COALESCE(m.FirstName + ' ' + m.LastName, '(no manager)') AS [Manager]
FROM Employees e
left OUTER JOIN Employees m
ON e.ManagerID = m.EmployeeID
GROUP BY m.EmployeeID, e.FirstName, e.LastName, m.FirstName, m.LastName
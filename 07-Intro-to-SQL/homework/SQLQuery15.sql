-- find all employees along with their address. Use inner join with `ON` clause
USE TelerikAcademy
SELECT e.FirstName, e.LastName, a.AddressText AS [Address]
FROM Employees e
INNER JOIN Addresses a
ON e.AddressID = a.AddressID
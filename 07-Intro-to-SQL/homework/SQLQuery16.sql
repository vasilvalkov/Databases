USE TelerikAcademy
SELECT e.FirstName, e.LastName, a.AddressText AS [Address]
FROM Employees e, Addresses a
WHERE e.AddressID = a.AddressID
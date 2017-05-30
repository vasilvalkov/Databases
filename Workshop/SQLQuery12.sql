-- 12. Insert all the Countries from Employees, Customers, Suppliers and Orders (RESULT: 25 row(s) affected)
USE NORTHWND
INSERT INTO Countries
SELECT DISTINCT a.Country FROM 
(
	SELECT DISTINCT Country FROM Employees
	UNION
	SELECT DISTINCT Country FROM Suppliers
	UNION
	SELECT DISTINCT Country FROM Customers
	UNION
	SELECT DISTINCT ShipCountry FROM Orders
) a
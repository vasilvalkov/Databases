-- 02. Insert into Cities all Cities from Employees, Suppliears and Customers tables
USE NORTHWND
INSERT INTO Cities
SELECT DISTINCT a.City FROM 
(
	SELECT DISTINCT City FROM Employees
	UNION
	SELECT DISTINCT City FROM Suppliers
	UNION
	SELECT DISTINCT City FROM Customers
	UNION
	SELECT DISTINCT ShipCity FROM Orders
) a
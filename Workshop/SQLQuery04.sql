-- 04. Update Employees, Suppliers, Customers tables with CityId which is in the Cities table
USE NORTHWND
UPDATE Customers
SET Customers.CityId = c.CityId
FROM (SELECT CityId, Name FROM Cities)c
WHERE Customers.City = c.Name

UPDATE Suppliers
SET Suppliers.CityId = c.CityId
FROM (SELECT CityId, Name FROM Cities)c
WHERE Suppliers.City = c.Name

UPDATE Employees
SET Employees.CityId = c.CityId
FROM (SELECT CityId, Name FROM Cities)c
WHERE Employees.City = c.Name
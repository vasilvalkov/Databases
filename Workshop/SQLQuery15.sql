-- 15. Drop column Country and ShipCountry from Employees, Customers, Suppliers and Orders tables
USE NORTHWND
ALTER TABLE Employees
DROP COLUMN Country

ALTER TABLE Suppliers
DROP COLUMN Country

ALTER TABLE Customers
DROP COLUMN Country

ALTER TABLE Orders
DROP COLUMN ShipCountry
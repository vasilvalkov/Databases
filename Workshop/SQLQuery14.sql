-- 14. Drop column City and ShipCity from Employees, Suppliers, Customers and Orders tables
USE NORTHWND
ALTER TABLE Employees
DROP COLUMN City

ALTER TABLE Suppliers
DROP COLUMN City

DROP INDEX Customers.City
ALTER TABLE Customers
DROP COLUMN City
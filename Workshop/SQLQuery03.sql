-- 03. Add CityId into Employees, Suppliers, Customers tables which is Foreign Key to CityId in Cities
USE NORTHWND
ALTER TABLE Customers
ADD CityId INT

ALTER TABLE Customers
ADD CONSTRAINT FK_Customers_Cities 
FOREIGN KEY (CityId) 
REFERENCES Cities(CityID)
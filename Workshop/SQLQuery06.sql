-- 06. Add CityId column in Orders with Foreign Key to CityId in Cities
USE NORTHWND
ALTER TABLE Orders
ADD CityId INT
CONSTRAINT FK_Orders_Cities 
FOREIGN KEY (CityId) 
REFERENCES Cities(CityID)
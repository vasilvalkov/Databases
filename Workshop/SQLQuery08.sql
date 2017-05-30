-- 08. Update ShipCityId in Orders table with values from Cities table (RESULT: 830 row(s) affected)
USE NORTHWND
UPDATE Orders
SET Orders.ShipCityId = c.CityId
FROM (SELECT CityId, Name FROM Cities)c
WHERE Orders.ShipCity = c.Name
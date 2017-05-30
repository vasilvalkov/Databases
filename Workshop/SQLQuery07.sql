-- 07. Now rename that column to be ShipCityId to be consistent (use stored procedure :) )
USE NORTHWND
EXEC sys.sp_rename 'Orders.CityId', 'ShipCityId', 'COLUMN'
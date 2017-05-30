-- 10. Create table Countries with columns CountryId and Name (Unique)
USE NORTHWND
CREATE TABLE Countries
( 
	CountryId INT IDENTITY PRIMARY KEY,
	Name NVARCHAR(20) UNIQUE NOT NULL
)
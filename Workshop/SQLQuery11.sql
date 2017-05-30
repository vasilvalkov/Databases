-- 11. Add CountryId to Cities with Foreign Key to CountryId in Countries
USE NORTHWND
ALTER TABLE Cities
ADD CountryId INT 
CONSTRAINT FK_Cities_Countries
FOREIGN KEY (CountryId)
REFERENCES Countries(CountryId)
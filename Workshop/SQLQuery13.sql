-- 13. Update CountryId in Cities table with values from Countries table
USE NORTHWND
UPDATE Cities
SET Cities.CountryId = CitiesInCountries.CountryId
FROM (
	SELECT DISTINCT UnionCountries.CityId, 
					UnionCountries.Country,
					Countries.CountryId
	FROM
	(
		SELECT Country, CityId
		FROM Employees e
		WHERE e.CityId IS NOT NULL
		UNION
		SELECT Country, CityId
		FROM Suppliers s
		WHERE s.CityId IS NOT NULL
		UNION
		SELECT Country, CityId
		FROM Customers c
		WHERE c.CityId IS NOT NULL
		UNION
		SELECT ShipCountry, ShipCityId
		FROM Orders o
		WHERE o.ShipCityId IS NOT NULL
	) UnionCountries
	JOIN Countries
	ON Countries.Name = UnionCountries.Country
) CitiesInCountries
WHERE Cities.CityID = CitiesInCountries.CityId
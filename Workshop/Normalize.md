## Your task is to normalize the database. Please use only SQL Queries in order to fully understand them. You are not allowed to use Management studio and create or modify tables from there.

1. Create table Cities with (CityId, Name)

1. Insert into Cities all the Cities from Employees, Suppliers, Customers tables (RESULT: 95 row(s) affected)

1. Add CityId into Employees, Suppliers, Customers tables which is Foreign Key to CityId in Cities

1. Update Employees, Suppliers, Customers tables with CityId which is in the Cities table

	- Employees (RESULT: 9 row(s) affected)

	- Suppliers (RESULT: 29 row(s) affected)

	- Customers (RESULT: 91 row(s) affected)

1. Make the column Name in Cities Unique

1. Add CityId column in Orders with Foreign Key to CityId in Cities

1. Now rename that column to be ShipCityId to be consistent (use stored procedure :) )

1. Update ShipCityId in Orders table with values from Cities table (RESULT: 830 row(s) affected)

1. Drop column ShipCity from Orders

1. Create table Countries with columns CountryId and Name (Unique)

1. Add CountryId to Cities with Foreign Key to CountryId in Countries

1. Insert all the Countries from Employees, Customers, Suppliers and Orders (RESULT: 25 row(s) affected)

1. Update CountryId in Cities table with values from Countries table

1. Drop column City and ShipCity from Employees, Suppliers, Customers and Orders tables

	```
	In Customers table there is an error
		(
		Msg 5074, Level 16, State 1, Line 91
		The index 'City' is dependent on column 'City'.
		Msg 4922, Level 16, State 9, Line 91
		ALTER TABLE DROP COLUMN City failed because one or more objects access this column.
		)
	Think about that error :)
	```

1. Drop column Country and ShipCountry from Employees, Customers, Suppliers and Orders tables
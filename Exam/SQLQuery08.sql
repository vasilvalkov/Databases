-- 08. Create a stored procedure that prints the number of powers by alignment of their superheroes
--    Name it usp_PowersUsageByAlignment
USE SuperheroesUniverse
GO

CREATE PROC usp_PowersUsageByAlignment
AS
SELECT
	a.Name AS [Alignment],
	COUNT(pwr.Name) AS [Powers Count]
FROM Superheroes s
INNER JOIN PowerSuperheroes ps
	ON s.Id = ps.Superhero_Id
INNER JOIN Powers pwr
	ON pwr.Id = ps.Power_Id
INNER JOIN Alignments a
	ON a.Id = s.Alignment_Id
GROUP BY a.Name
GO

EXEC usp_PowersUsageByAlignment
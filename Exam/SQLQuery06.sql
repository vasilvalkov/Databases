-- 06. Create a stored procedure that prints the number of heroes with Good, Evil and Neutral alignment for each Planet
--    Name it usp_GetPlanetsWithHeroesCount
USE SuperheroesUniverse
GO

CREATE PROC usp_GetPlanetsWithHeroesCount
AS
SELECT
	p.Name AS [Planet],
	COUNT(CASE WHEN a.Name = 'Good' THEN 1 END) AS [Good heroes],
	COUNT(CASE WHEN a.Name = 'Neutral' THEN 1 END ) AS [Neutral heroes],
	COUNT(CASE WHEN a.Name = 'Evil' THEN 1 end) AS [Evil heroes]
FROM Superheroes s
INNER JOIN PlanetSuperheroes ps
	ON s.Id = ps.Superhero_Id
INNER JOIN Planets p
	ON p.Id = ps.Planet_Id
INNER JOIN Alignments a
	ON a.Id = s.Alignment_Id
GROUP BY p.Name
GO

EXEC usp_GetPlanetsWithHeroesCount
-- 05. Create a stored prodecure, that gives full information about a superhero, by provided Superhero's Id
--    Name it usp_GetSuperheroInfo
USE SuperheroesUniverse
GO

CREATE PROC usp_GetSuperheroInfo(@superheroId INT)
AS
SELECT s.Id,
	s.Name,
	s.SecretIdentity,
	s.Bio,
	a.Name AS [Alignment],
	p.Name AS [Planet],
	pwr.Name AS [Power],
	pt.Name AS [Power type]
FROM Superheroes s
INNER JOIN PlanetSuperheroes ps
	ON s.Id = ps.Superhero_Id
INNER JOIN Planets p
	ON p.Id = ps.Planet_Id
INNER JOIN PowerSuperheroes pwrs
	ON s.Id = pwrs.Superhero_Id
INNER JOIN Powers pwr
	ON pwr.Id = pwrs.Power_Id
INNER JOIN Alignments a
	ON a.Id = s.Alignment_Id
INNER JOIN PowerTypes pt
	ON pt.Id = pwr.PowerTypeId
WHERE s.Id = @superheroId
GO

EXEC usp_GetSuperheroInfo '2'
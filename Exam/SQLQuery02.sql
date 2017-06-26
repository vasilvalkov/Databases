-- 02. List all superheroes with their powers and powerTypes 
USE SuperheroesUniverse
SELECT
    s.Name AS [Superhero],
	p.Name + ' (' + pt.Name + ')' AS [Power]
FROM Superheroes s
INNER JOIN PowerSuperheroes ps
	ON s.Id = ps.Superhero_Id
INNER JOIN Powers p
	ON ps.Power_Id = p.Id
INNER JOIN PowerTypes pt
	ON pt.Id = p.PowerTypeId
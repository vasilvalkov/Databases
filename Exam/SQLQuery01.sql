-- 01. List all superheroes in Earth
USE SuperheroesUniverse
SELECT
	s.Id,
    s.Name
FROM Superheroes s
INNER JOIN PlanetSuperheroes ps
	ON s.Id = ps.Superhero_Id
INNER JOIN Planets p
	ON ps.Planet_Id = p.Id
GROUP BY p.Name, s.Name, s.Id
HAVING p.Name = 'Earth'
ORDER BY s.Id
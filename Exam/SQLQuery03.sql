-- 03. List the top 5 planets, sorted by count of superheroes with alignment 'Good', then by Planet Name 
USE SuperheroesUniverse
SELECT TOP 5
	p.Name AS [Planet],
	count(s.Id) AS [Protectors]
FROM Superheroes s
INNER JOIN PlanetSuperheroes ps
	ON s.Id = ps.Superhero_Id
INNER JOIN Planets p
	ON p.Id = ps.Planet_Id
INNER JOIN Alignments a
	ON a.Id = s.Alignment_Id
GROUP BY p.Name, a.Name
HAVING a.Name = 'Good'
ORDER BY count(a.Name) DESC, p.Name
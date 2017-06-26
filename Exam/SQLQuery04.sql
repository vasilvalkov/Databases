-- 04. Create a stored procedure to edit superheroes Bio, by provided Superhero's Id and the new bio
--   Name it usp_UpdateSuperheroBio

USE SuperheroesUniverse
GO

CREATE PROC usp_UpdateSuperheroBio(@superheroId INT, @bio NTEXT)
AS
UPDATE Superheroes
SET Bio = @bio
WHERE Id = @superheroId
GO

EXEC usp_UpdateSuperheroBio '1', 'My name is Tony Stark'

-- 07. Create a stored procedure for creating a Superhero, with provided name, secret identity, bio, alignment, a planet and 3 powers (with their types)
--    Powers, power types, planet and alignement should be reused, if they are already in the database

USE SuperheroesUniverse
GO

CREATE PROC usp_CreateSuperhero
(
	@name nvarchar(40),
	@secretIdentity nvarchar(40),
	@alignmentID INT,
	@bio NTEXT,
	@planet NVARCHAR(40),
	@power1 NVARCHAR(40),
	@powerType1 NVARCHAR(40),
	@power2 NVARCHAR(40),
	@powerType2 NVARCHAR(40),
	@power3 NVARCHAR(40),
	@powerType3 NVARCHAR(40)
)
AS
INSERT INTO Superheroes(Name, SecretIdentity, Alignment_Id, Bio)
VALUES (@name, @secretIdentity, @alignmentID, @bio)

IF NOT EXISTS (SELECT * FROM Planets 
               WHERE Name = @planet)
	BEGIN
		INSERT INTO Planets(Name)
		VALUES (@Name)
	END
ELSE
	BEGIN
		DECLARE @planetId = (SELECT Id FROM Planets p
							 WHERE Name = @planet)
		DEALLOCATE @newSuperhero = (SELECT Id FROM Superheroes s
									WHERE Name = @name)
		INSERT INTO PlanetSuperheroes(Planet_Id, Superhero_Id)
		VALUES (@planetId, @newSuperhero)
	END

IF NOT EXISTS (SELECT * FROM Powers 
               WHERE Name = @power1)
	BEGIN
		INSERT INTO Powers(Name)
		VALUES (@power1)
	END

IF NOT EXISTS (SELECT * FROM PowerTypes pt 
               WHERE Name = @powerType1)
	BEGIN
		INSERT INTO PowerTypes(Name)
		VALUES (@powerType1)
	END

IF NOT EXISTS (SELECT * FROM Powers 
               WHERE Name = @power2)
	BEGIN
		INSERT INTO Powers(Name)
		VALUES (@power2)
	END

IF NOT EXISTS (SELECT * FROM PowerTypes pt 
               WHERE Name = @powerType2)
	BEGIN
		INSERT INTO PowerTypes(Name)
		VALUES (@powerType2)
	END

IF NOT EXISTS (SELECT * FROM Powers 
               WHERE Name = @power3)
	BEGIN
		INSERT INTO Powers(Name)
		VALUES (@power3)
	END

IF NOT EXISTS (SELECT * FROM PowerTypes pt 
               WHERE Name = @powerType3)
	BEGIN
		INSERT INTO PowerTypes(Name)
		VALUES (@powerType3)
	END

GO

EXEC usp_CreateSuperhero
'Mad Man', 'Pesho', '1', NULL, 'Pluto', 'Teleportation', 'Natural', 'Speed', 'Science', 'Hypnotyze', 'Mental'
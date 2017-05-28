-- create a table Groups. Groups should have unique name (use unique constraint).
--   Define primary key and identity column.
USE TelerikAcademy
CREATE TABLE Groups (
	Id INT IDENTITY,
	Name NVARCHAR(30) UNIQUE NOT NULL,
	CONSTRAINT PK_Groups PRIMARY KEY(Id)
)
GO
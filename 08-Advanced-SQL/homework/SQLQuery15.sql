/* create a table Users. Users should have username, password, full name and last login time.
    Choose appropriate data types for the table fields. Define a primary key column with a primary key constraint.
    Define the primary key column as identity to facilitate inserting records.
    Define unique constraint to avoid repeating usernames.
    Define a check constraint to ensure the password is at least 5 characters long.
*/
USE TelerikAcademy
CREATE TABLE Users (
	Id INT IDENTITY,
	Username NVARCHAR(30) UNIQUE NOT NULL,
	Password NVARCHAR(100) NOT NULL,
	FullName NVARCHAR(100),
	LastLogin DATE,
	CONSTRAINT PK_Users PRIMARY KEY(Id),
	--CONSTRAINT Uniq_UserName UNIQUE(Username),
	CONSTRAINT chk_PasswordLen CHECK (LEN(Password) >= 5 )
)
GO

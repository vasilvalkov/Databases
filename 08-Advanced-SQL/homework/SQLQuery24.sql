-- Write a SQL statement that deletes all users without passwords (NULL password).
USE TelerikAcademy
DELETE FROM Users
WHERE Password = NULL
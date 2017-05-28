-- create a view that displays the users from the Users table that have been in the system today. 
CREATE VIEW [UsersLoggedInToday] AS
SELECT Username FROM Users
WHERE LastLogin = CAST(CURRENT_TIMESTAMP AS DATE)
/* insert in the Users table the names of all employees from the Employees table.
    Combine the first and last names as a full name.
    For username use the first letter of the first name + the first letter of the middle name + the last name (in lowercase).
    Use the same for the password, and NULL for last login time.
*/
USE TelerikAcademy
INSERT INTO Users(FullName, Username, Password, LastLogin)
(
	SELECT FirstName + ' ' + LastName,
		LOWER(SUBSTRING(FirstName, 1, 1)) + ISNULL(SUBSTRING(MiddleName, 1, 1), '') + LOWER(LastName),
		LOWER(SUBSTRING(FirstName, 1, 1)) + LOWER(LastName),
		NULL
	FROM Employees
)

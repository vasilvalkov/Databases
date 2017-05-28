-- update some of the records in the Users and Groups tables.
USE TelerikAcademy
UPDATE Users
SET Username = 'Vankata'
WHERE Username = 'Ponichka'

UPDATE Users
SET GroupId = 1
WHERE Username = 'Vankata'

UPDATE Users
SET GroupId = 2
WHERE Username = 'Pesho'

UPDATE Groups
SET Name = 'Junka'
WHERE Name = 'Junior'
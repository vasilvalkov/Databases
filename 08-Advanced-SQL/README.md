## 05. Advanced SQL
### _Homework_

1.	[Write a SQL query to find the names and salaries of the employees that take the minimal salary in the company.](./homework/SQLQuery01.sql)
	*	Use a nested `SELECT` statement.
1.	[Write a SQL query to find the names and salaries of the employees that have a salary that is up to 10% higher than the minimal salary for the company.](./homework/SQLQuery02.sql)
1.	[Write a SQL query to find the full name, salary and department of the employees that take the minimal salary in their department.](./homework/SQLQuery03.sql)
	*	Use a nested `SELECT` statement.
1.	[Write a SQL query to find the average salary in the department #1.](./homework/SQLQuery04.sql)
1.	[Write a SQL query to find the average salary  in the "Sales" department.](./homework/SQLQuery05.sql)
1.	[Write a SQL query to find the number of employees in the "Sales" department.](./homework/SQLQuery06.sql)
1.	[Write a SQL query to find the number of all employees that have manager.](./homework/SQLQuery07.sql)
1.	[Write a SQL query to find the number of all employees that have no manager.](./homework/SQLQuery08.sql)
1.	[Write a SQL query to find all departments and the average salary for each of them.](./homework/SQLQuery09.sql)
1.	[Write a SQL query to find the count of all employees in each department and for each town.](./homework/SQLQuery10.sql)
1.	[Write a SQL query to find all managers that have exactly 5 employees. Display their first name and last name.](./homework/SQLQuery11.sql)
1.	[Write a SQL query to find all employees along with their managers. For employees that do not have manager display the value "(no manager)".](./homework/SQLQuery12.sql)
1.	[Write a SQL query to find the names of all employees whose last name is exactly 5 characters long. Use the built-in `LEN(str)` function.](./homework/SQLQuery13.sql)
1.	[Write a SQL query to display the current date and time in the following format "`day.month.year hour:minutes:seconds:milliseconds`".](./homework/SQLQuery14.sql)
	*	Search in Google to find how to format dates in SQL Server.
1.	[Write a SQL statement to create a table `Users`. Users should have username, password, full name and last login time.](./homework/SQLQuery15.sql)
	*	Choose appropriate data types for the table fields. Define a primary key column with a primary key constraint.
	*	Define the primary key column as identity to facilitate inserting records.
	*	Define unique constraint to avoid repeating usernames.
	*	Define a check constraint to ensure the password is at least 5 characters long.
1.	[Write a SQL statement to create a view that displays the users from the `Users` table that have been in the system today.](./homework/SQLQuery16.sql)
	*	Test if the view works correctly.
1.	[Write a SQL statement to create a table `Groups`. Groups should have unique name (use unique constraint).](./homework/SQLQuery17.sql)
	*	Define primary key and identity column.
1.	[Write a SQL statement to add a column `GroupID` to the table `Users`.](./homework/SQLQuery18.sql)
	*	Fill some data in this new column and as well in the `Groups table.
	*	Write a SQL statement to add a foreign key constraint between tables `Users` and `Groups` tables.
1.	[Write SQL statements to insert several records in the `Users` and `Groups` tables.](./homework/SQLQuery19.sql)
1.	[Write SQL statements to update some of the records in the `Users` and `Groups` tables.](./homework/SQLQuery20.sql)
1.	[Write SQL statements to delete some of the records from the `Users` and `Groups` tables.](./homework/SQLQuery21.sql)
1.	[Write SQL statements to insert in the `Users` table the names of all employees from the `Employees` table.](./homework/SQLQuery22.sql)
	*	Combine the first and last names as a full name.
	*	For username use the first letter of the first name + the last name (in lowercase).
	*	Use the same for the password, and `NULL` for last login time.
1.	[Write a SQL statement that changes the password to `NULL` for all users that have not been in the system since 10.03.2010.](./homework/SQLQuery23.sql)
1.	[Write a SQL statement that deletes all users without passwords (`NULL` password).](./homework/SQLQuery24.sql)
1.	[Write a SQL query to display the average employee salary by department and job title.](./homework/SQLQuery25.sql)
1.	[Write a SQL query to display the minimal employee salary by department and job title along with the name of some of the employees that take it.](./homework/SQLQuery26.sql)
1.	[Write a SQL query to display the town where maximal number of employees work.](./homework/SQLQuery27.sql)
1.	[Write a SQL query to display the number of managers from each town.](./homework/SQLQuery28.sql)

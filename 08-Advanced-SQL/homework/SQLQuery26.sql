-- display the minimal employee salary by department and job title along with the name of some of the employees that take it.
CREATE VIEW vw_Results
AS
SELECT
	ROW_NUMBER() OVER (PARTITION BY d.DepartmentID ORDER BY d.DepartmentID) AS [row_num]
   ,MIN(e.Salary) AS [Average Salary]
   ,d.DepartmentID
   ,e.JobTitle
   ,e.FirstName + ' ' + e.LastName AS [Employee]
FROM Employees e
INNER JOIN Departments d
	ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentID
		,e.JobTitle
		,e.FirstName
		,e.LastName

-- showing some of the employees
SELECT [Average Salary], DepartmentID, JobTitle, Employee FROM vw_Results
WHERE row_num BETWEEN 0 AND 2


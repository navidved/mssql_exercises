USE TutorialDB
GO

-- Insert rows into table 'Employees'
INSERT INTO dbo.Employees
   (EmpId,EmpName,EmpLocation)
VALUES
   ( 1, N'Jared', N'Australia'),
   ( 2, N'Nikita', N'India'),
   ( 3, N'Tom', N'Germany'),
   ( 4, N'Jake', N'United States'),
   ( 5, N'Navid', N'Iran')
GO

-- Query the total count of employees
SELECT COUNT(*) as EmployeeCount FROM dbo.Employees;
-- Query all employee information

SELECT e.EmpId, e.EmpName, e.EmpLocation
FROM dbo.Employees as e
GO
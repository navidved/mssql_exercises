-- sqlCreateTable

-- https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver16

USE TutorialDB
GO

IF OBJECT_ID('dbo.Employees', 'U') IS NOT NULL
DROP TABLE dbo.Employees
GO

-- Create the table in the specified schema
CREATE TABLE dbo.Employees
(
    EmpId INT NOT NULL PRIMARY KEY, -- primary key column
    EmpName [NVARCHAR](50)  NOT NULL,
    EmpLocation [NVARCHAR](50)  NOT NULL
    -- specify more columns here
);
GO

-- remove table
DROP TABLE dbo.Employees
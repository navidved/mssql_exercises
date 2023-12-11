USE TutorialDB
GO


UPDATE dbo.Employees
    SET EmpName = 'Navid Ar'
    WHERE EmpId = 5
GO


SELECT * FROM dbo.Employees WHERE EmpId = 5
GO
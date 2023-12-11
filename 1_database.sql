-- sqlCreateDatabase

USE master
GO
IF NOT EXISTS (
   SELECT name
   FROM sys.databases
   WHERE name = N'TutorialDB'
)
CREATE DATABASE [TutorialDB]
GO

-- Press Ctrl+Shift+E

DROP DATABASE TutorialDB
GO


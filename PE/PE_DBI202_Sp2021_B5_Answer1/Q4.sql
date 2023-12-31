/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [EmployeeID]
      ,[FirstName]
      ,[LastName]
      ,E.[DepartmentID]
	  ,D.DepartmentName 
	  ,L.StateProvince
	  , CountryID 
  FROM [PE_DBI202_Sp2021_B5].[dbo].[Employees] E, dbo.Departments D, dbo.Locations L
  WHERE E.DepartmentID = D.DepartmentID  AND D.LocationID = L.LocationID 
  AND CountryID = 'US' AND StateProvince='Washington' AND Salary > 3000;
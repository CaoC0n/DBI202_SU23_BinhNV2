Use PE_DBI202_Sp2021_B5

--SELECT L.[LocationID],[StreetAddress],[City],[StateProvince],[CountryID], Count(D.DepartmentID) as NumberOfDepartments
--FROM Departments D
--Right Join Locations L
--ON L.LocationID = D.LocationID 
--Group by L.[LocationID],[StreetAddress],[City],[StateProvince],[CountryID]
--Order by NumberOfDepartments desc, L.[LocationID] asc

SELECT L.[LocationID],[StreetAddress],[City],[StateProvince],[CountryID], Count(D.DepartmentID) as NumberOfDepartments
  FROM [PE_DBI202_Sp2021_B5].[dbo].[Locations] L
  LEFT JOIN dbo.Departments D 
  ON L.LocationID=D.LocationID 
  Group by L.[LocationID],[StreetAddress],[City],[StateProvince],[CountryID]
  Order by NumberOfDepartments desc, L.[LocationID] asc  

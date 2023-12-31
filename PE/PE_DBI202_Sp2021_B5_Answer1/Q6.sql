Use PE_DBI202_Sp2021_B5 

-- Method 1
SELECT TOP 1 E.[JobID], [JobTitle], Count(E.[JobID]) as NumberOfEmployees
  FROM [PE_DBI202_Sp2021_B5].[dbo].[Jobs] J, dbo.Employees E
  WHERE J.JobID = E.JobID 
  GROUP BY E.JobID, [JobTitle] 
  ORDER BY NumberOfEmployees Desc


-- Method 2
SELECT Count(E.[JobID]) as NumberOfEmployees Into Temp0 FROM dbo.Employees E
  GROUP BY E.JobID

SELECT E.[JobID], [JobTitle], Count(E.[JobID]) as NumberOfEmployees
  FROM [PE_DBI202_Sp2021_B5].[dbo].[Jobs] J, dbo.Employees E
  WHERE J.JobID = E.JobID 
  GROUP BY E.JobID, [JobTitle] 
  Having Count(E.[JobID])=(Select MAX(NumberOfEmployees) From dbo.Temp0)
  ORDER BY NumberOfEmployees Desc

  
  

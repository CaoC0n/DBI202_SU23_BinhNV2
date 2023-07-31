/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [JobID]
      ,[JobTitle]
      ,[min_salary]
  FROM [PE_DBI202_Sp2021_B5].[dbo].[Jobs]
  Where JobTitle LIKE '%Manager%'
  Order by [min_salary] desc;
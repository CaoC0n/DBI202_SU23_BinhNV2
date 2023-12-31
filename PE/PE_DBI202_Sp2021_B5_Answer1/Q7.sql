Select B.[ManagerID], Count(A.[EmployeeID]) As NumberOfSubordinates INTO Temp1 FROM [Employees] A, [Employees] B
  WHERE (A.EmployeeID = B.ManagerID) 
  GROUP BY B.ManagerID;

SELECT EmployeeID, 0 As NumberOfSubordinates Into Temp2 FROM [Employees] 
  WHERE EmployeeID<>ALL(Select [ManagerID] FROM Temp1) AND (Salary>10000)
  UNION
  Select [ManagerID],[NumberOfSubordinates] FROM Temp1;

SELECT T.[EmployeeID], E.FirstName, E.LastName, E.Salary, E.DepartmentID, D.DepartmentName, [NumberOfSubordinates]
  FROM [Temp2] T, Employees E, Departments D
  WHERE T.EmployeeID=E.EmployeeID AND E.DepartmentID=D.DepartmentID 
  Order by NumberOfSubordinates DESC, LastName ASC;

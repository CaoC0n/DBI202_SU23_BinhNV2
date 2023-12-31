Create Proc PR1 @countryID varchar(10), @numberOfDepartments int output
as
Begin
	Set @numberOfDepartments=
		(	
		Select Count(*) From dbo.Departments D, dbo.Locations L
		Where D.LocationID = L.LocationID AND L.CountryID = @countryID
		)
End

Declare @x int
exec PR1 'US', @x output
Select @x as NumberOfDepartments
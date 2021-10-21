
function IsLeapYear(y:integer):boolean;
begin
  Assert(y > 0, 'y > 0');
  if y.Divs(4) then 
  begin
    Result:= True;
    if not y.Divs(400) and y.Divs(100) then 
      Result:= False;
  end
  else 
    Result:= False;
end;

begin
  
end.
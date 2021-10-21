
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

function LaterInYear(month1, day1, month2, day2: integer):string;
begin
  if month1 > month2 then 
    Result:= 'первый ближе'
  else 
    if month1 = month2 then
      if day1 < day2 then
        Result:= 'второй ближе'
      else 
        Result:= 'первый ближе'
    else
      Result:= 'второй ближе';
end;

function DaysInYear(year: integer):integer;
begin
  if IsLeapYear(year) then 
    Result:= 366
  else 
    Result:= 365;
end;

function DaysInYearRange(year1, year2: integer): integer;
begin
  (year1, year2):= (min(year1, year2), max(year1, year2));
  var sum:= 0;
  for var i:= year1 to year2 do 
  begin
    if IsLeapYear(i) then 
      sum += 366
    else 
      sum += 365;
  end;
  Result:= sum;
end;

function SecondsInHours(hours: integer): integer;
begin
  Result:= hours*60*60;
end;


begin
  
end.
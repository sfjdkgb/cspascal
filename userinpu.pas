PROGRAM userinput;
VAR
  n, times, i, sum : INTEGER;

FUNCTION GetValue : INTEGER;
  VAR
    num : INTEGER;
  FUNCTION Valid(a : INTEGER) : Boolean;
    BEGIN
      Valid := (num >= 0) AND (num <= 100) { in between 0 and 50 }
    END;
  BEGIN
    REPEAT
    Write('Enter a number between 0 and 50: ');
    Read(num);
    IF NOT Valid(num) THEN Writeln('Try again');
    UNTIL Valid(num);
    GetValue := num;
  END;

BEGIN
{ Ask the user how many numbers they will enter }
{ Loop that many times }
{ Sum up all the numbers the user gives }
  Write('How many numbers will you enter? ');
  Read(times);
  sum := 0;
  FOR i := 1 TO times DO
  BEGIN
    n := GetValue;
    sum := sum + n;
  END;
  Read(n);
END.
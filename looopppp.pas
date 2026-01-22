PROGRAM userinput;
CONST
  SIZE =7;
  TYPE
  Gradelist = ARRAY[SIZE] of INTEGER;
VAR
n : INTEGER;
times : INTEGER;
i :INTEGER;
sum : integer;
num : integer;
grdaes : GradeList;
FUNCTION GetValue :INTEGER;
  VAR
  num : INTEGER;
  sum : INTEGER;
  i : INTEGER;
  time : INTEGER;
  FUNCTION GetValue(low, high : INTEGER) : INTEGER;
  VAR
  num : INTEGER;
  FUNCTION Valid(a, low, high : INTEGER)  : Boolean  ;
    BEGIN
       Valid := (a >= low) AND (a <= high);
    END;

   BEGIN
      REPEAT
      Writeln('Write a number between ', low,' and ', high);
      Read(num);
      IF NOT Valid(num, low, high) THEN Writeln('try again');
      UNTIL Valid(num, low, high);
      Getvalue := num;
    END;

BEGIN

  REPEAT
  Writeln('how many numbers will you enter');
  times := GetValue(4,SIZE);
  sum := 0;
  FOR i := 1 TO times DO
  BEGIN
  grades[i] := GetValue(0, 100);
  sum := sum + n;
  END;
  FOR i := 1 to times DO sum := sum + grades[i]
  Writeln('the sum = ', sum);
  Writeln('avergae = ', sum/times);
  Readln(n);
END.

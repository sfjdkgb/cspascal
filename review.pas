PROGRAM review;
TYPE
  Fraction = RECORD
                num : INTEGER;
                den : INTEGER;
  END;
VAR
  f1, f2 : FRACTION;
BEGIN
  f1.num := 2;
  f1.den := 3;
  f2.num := 6;
  f2.den := 7;
Writeln('The first fraction is', f1.num,'/',f1.den);
readln;
END.


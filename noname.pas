 UNIT csp;
 INTERFACE
 FUNCTION Add3(a, b, c : INTEGER) : INTEGER;

 FUNCTION Pow(n, p : INTEGER) : INTEGER;

 IMPLEMENTATION
 FUNCTION Add3(a, b, c : INTEGER) : INTEGER;
 BEGIN
    Writeln('inside add3');
    Add3 := a + b + c;
    END;
 FUNCTION Pow(n, p : INTEGER) : INTEGER;
 VAR
   prod, i : INTEGER;
 Begin
    IF p <0 THEN prod := 0
    ELSE
    BEGIN
    prod := 1;
      FOR i :=1 TO P DO
         prod := prod*n;
      ENd;
      Pow := prod;
    ENd;
    END.

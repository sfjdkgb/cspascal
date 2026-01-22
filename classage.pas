PROGRAM ageclassifier(input, output);
VAR
   age : INTEGER;
   class : CHAR;
   x, y : INTEGER;
FUNCTION ClassifyAge(age : INTEGER) : CHAR;
   BEGIN
   IF (age <= 12) THEN ClassifyAge := 'c'
   ELSE IF (age >= 13) AND (age <= 19) THEN ClassifyAge := 't'
   ELSE IF (age >=20) THEN ClassifyAge := 'a'
   END;
PROCEDURE PrintAgeCLass(Class : CHAR);
   BEGIN
   IF class = 'c' THEN writeln('you are  a kids')
   ELSE IF class = 't' THEN writeln(' you are a teenager')
   ELSE IF class=  'a' THEN Writeln(' you are a adult');
END;
BEGIN
   x:=0;
   y:=1;
   REPEAT
   Writeln('enter your age");
   Read(age);
    IF (age < 0) OR (age > 120) THEN writeln('Enter age within range 0-120');
   UNTIL
   writeln('Thanks for participating');
   readln(age);
   END.

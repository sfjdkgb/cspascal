Program lettergrader(input, output);

VAR
   Grade : INTEGER;
   Letter : CHAR;
   x, y : INTEGER;
FUNCTION ClassifyLetter(Grade : integer) : CHAR;
   BEGIN
   IF ( Grade <=60) AND (Grade >= 1) THEN Classifyletter := 'f'
   ELSE if (Grade >= 61) AND (Grade <= 70) THEN ClassifyLetter :='d'
   ELSE IF (Grade >= 71 ) AND (Grade <= 80) THEN ClassifyLetter :='c'
   ELSE IF (Grade >= 81 ) AND (Grade <= 90) THEN ClassifyLetter := 'b'
   ELSE IF (Grade >= 91) AND (Grade <= 101) THEN ClassifyLetter := 'a'
   ELSE IF (Grade < 1) OR (Grade >= 101) THEN ClassifyLetter := 'p'
   END;

PROCEDURE PrintLetterGrade( Letter : CHAR);
BEGIN
   IF Letter = 'f' then writeln('your letter grade is F.')
   ELSE IF Letter = 'd' then writeln('your letter grade is D.')
   ELSE IF Letter = 'c' then writeln('your letter grade is C.')
   ELSE IF Letter = 'b' then writeln('your letter grade is B.')
   ELSE IF Letter = 'a' then writeln('your letter grade is A.')
   ELSE IF Letter = 'p' then writeln('your input is invalid.')
   END;

   BEGIN
   x := 1;
   y := 1;
   REPEAT
   Writeln('What is your grade for period',x,'?');

   Readln(grade);
   Letter := ClassifyLetter(Grade);
   PrintLetterGrade(Letter);

   IF Letter = 't' THEN  x := x
   ELSE x := x + y
   UNTIL x = 8;
   Writeln('Your all done!!!');
   Readln(Grade);
   END.




PROGRAM Conditionals;
VAR
  num, guess, i : INTEGER;
BEGIN
  Randomize;
  num := Random(11);

  FOR i := 1 TO 3 DO
  REPEAT
  Write('Guess a number between 0 and 10: ');
  Read(guess);
  IF guess < num THEN writeln('incorrect, to low')
  ELSE IF guess > num THEN Writeln('incorrect, too high')
  ELSE writeln('great job');

  IF num = guess THEN Writeln('Good job')
  ELSE writeln('Wrong, try again!');
   UNTIL num = guess;

  Writeln(' you guessed ', guess);
  Read(guess)

END.
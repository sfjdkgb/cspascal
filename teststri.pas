PROGRAM teststrings;
USES csp;
VAR
  s : STRING;
BEGIN
  IF prefix('hello', 10) = s THEN writeln('pass')
  ELSE  writeln('fail');
  IF substring('hello', 3, 10) = 'llo' THEN writeln('pass')
  ELSE writeln('fail');
  readln;
END.
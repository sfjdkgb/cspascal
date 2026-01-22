PROGRAM AvrageWeight;
CONST
   MAXSIZE = 20;
TYPE
   List = array[1.. MAXSIZE] of REAL;
VAR
weight : LIST;
Teamsize : INTEGER;
Avegra : REAL;
Sum : REAL;
i : INTEGER;
BEGIN
  Writeln('How many players are on the team');
  Read(TEAMSIZE);
  FOR i:= 1 to TEAMSIZE DO
  BEGIN
    Writeln('What is the weight of player',i,'?');
    Read(weight[i]);
  END;
  sum := 0;
  FOR  i := 1  to TEAMSIZE DO Writeln(weight[i]);

  Read(i);
  End;


END.

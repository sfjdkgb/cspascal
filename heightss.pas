PROGRAM  SOFTBALL(input, output);
CONST
MAXTEAM = 22;
TYPE
List = array[1..MAXTEAM] of INTEGER;
VAR
sum, teamNUM, i : INTEGER;
height : List;
average : REAL;
BEGIN
  Writeln(' how many players are on the team?');
  Read(teamNum);
  FOR i := 1 To TeamNum DO
  begin;
  Writeln('what is the height of player',i,' in inches');
  Read(height[i]);
  end;
  FOR i := 1  tO TeamNum DO
  begin
  writeln('the height of player',i,' is :');
  Read(height[i]);
  end;
END.

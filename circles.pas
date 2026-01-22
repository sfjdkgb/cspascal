PROGRAM circles;  { Draw 10 circles with random center and random radius on screen }
USES graph;
VAR
  gm, gd, i : INTEGER;
BEGIN
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI');
  Randomize;

  writeln('random 10 circles');

  FOR i :=1 to 10 do
  BEGIN
  setcolor(random(16) );
  Circle(random(90), random(90), random(40) );
  end;
  Setcolor(5);
  Circle(90, 80, 80);

  read(i);

  CloseGraph;
END.
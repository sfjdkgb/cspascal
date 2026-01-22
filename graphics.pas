Program graphicws;
USES Graph;
VAR
  gd, gm : INTEGER;
BEGIN
   gd := Detect;
   InitGraph(gd, gm, 'C:\TPWDB\BGI');

   SetColor(4);
   lINE(100, 50, 225, 25);

   Setcolor(6);
   Line(225, 25, 350, 50);

   Setcolor(6);
   Rectangle(180, 350, 250, 400);

   Setcolor(8);
   Rectangle(100, 50, 350, 400);

   readln(gd);
   Closegraph;
End.
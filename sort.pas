PROGRAM sort;
USES csp;
VAR
 aList : LIST;
 i,j, temp : INTEGER;
BEGIN
 RandomList(aList, 10);
 Writeln('Unsorted:');
 PrintList(aList);

   BubbleSort(aList);
   Writeln('sorted:');
   PrintList(aList);
   Readln;

 Readln;
END.
PROGRAM stats;
USES csp;
VAR
  myList : LIST;
  n, i, val : INTEGER;
BEGIN
   REPEAT
   Writeln('Can you give me a random number of elements?');
   Readln(n);
   IF (n <= 0) OR (n > SIZE) THEN
     Writeln('your number must be between 1 and ', SIZE);
   UNTIL (n > 0) AND (n <= SIZE);
   RandomList(myList, n);
   PrintList(mylist);
   BubbleSort(myList);
   Writeln('The average of these numbers is ', Average(myList):3:2);
   Writeln('The median =', Median(myList):3:2 );
   Readln;
END.
PROGRAM Testrandom;
USES csp;
VAR
   myList : LIST;
   n : INTEGER;
   min, i : INTEGER;
 FUNCTION Smallest(aList : LIST) : INTEGER;
Begin
    min := aList[1];
    FOR i := 2 to length(alist) DO
    IF aList[i] < min THEN min := aList[i];
    smallest := min;
END;
BEGIN
  Repeat
  writeln('enter the numbers you want bum');
  readln(n);
    IF (n <= 0) OR (n > SIZE) THEN
    writeln('change number so its in between 0 - 254 bum');
  Until (n > 0) AND (n < SIZE);
  RandomList(myList, n);
  PrintList(myList);
  Writeln(' Smallest elment number is', smallest(mylist));
  readln;

END.
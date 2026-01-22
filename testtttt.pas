PROGRAM Listtest;
USES csp;
VAR
   mylist : List;
   i : INTEGER;

BEGIN
   Writeln('Length of list =', Length(mylist));
   Append(myList, 5);
   Append(myList, 8);
   Append(myList, -50);
   Append(myList, 16);
   Append(myList, 10);
   Append(myList, 20);
   Writeln('Length of List =', Length(mylist));
   Writeln(myList[1],' ', myList[2]);
   readln(i);
   PrintList(myList);
END.
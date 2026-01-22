PROGRAM TESTINSERT;
  USES csp;
VAR
  myList : LIST;
BEGIN
  Append(mylist, 5);
  Append(myList, 8);
  Append(myList, 12);
  Append(myList, 20);
  Insert(myList, 2, -3);
  PrintList(myList);
  Readln(MyList[1]);
END.
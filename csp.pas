 UNIT csp;
 INTERFACE
   {List Data types}
 CONST
    SIZE = 255;
 TYPE
    List = ARRAY[0..SIZE] OF INTEGER;

 FUNCTION Length(aList : LIST) : INTEGER;
 PROCEDURE Append(VAR aList : LIST; value : INTEGER);
 PROCEDURE Insert(VAR aList :LIST; i, value : INTEGER);
 PROCEDURE PrintList(aList : LIST);
 FUNCTION Sum(aList : LIST) : INTEGER;
 FUNCTION Pow(n, p : INTEGER) : INTEGER;
 FUNCTION Len(s : STRING) : INTEGER;
 FUNCTION Concat(s1, s2 : STRING) : STRING;
 FUNCTION Reverse(s : STRING) : STRING;
 FUNCTION Prefix(s : STRING; n : INTEGER) : STRING;
 FUNCTION Substring(s : STRING; start, n : INTEGER) : STRING;
 PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
 FUNCTION Average(alist : List) : REAL;
 PROCEDURE RandomList(VAR aList : List; n : INTEGER);
 FUNCTION Smallest(aList : LIST) : INTEGER;
 PROCEDURE BubbleSort(VAR aList : LIST);
 FUNCTION Median( aList : List) : REAL;
 FUNCTION LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
 FUNCTION BinarySearch(aList : LIST; value : INTEGER) : BOOLEAN;
 PROCEDURE Swap(VAR a, b : INTEGER);
 PROCEDURE SelectionSort(VAR aList : LIST);

IMPLEMENTATION

PROCEDURE Selectionsort(VAR aList : LIST);
VAR
i, j, min : INTEGER;
  BEGIN
  FOR i := 1 TO Length(aList) DO
  BEGIN
  min := i;
  FOR j := i + 1 TO Length(aList) DO
  BEGIN
    IF aList[j] < aList[min] THEN min := j;
  END;
 END;

PROCEDURE Swap(VAR a, b : INTEGER);
VAR
temp : INTEGER;
BEGIN
  temp := a;
  a := b;
  b := temp;
  END;

 FUNCTION LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
VAR
i, count : INTEGER;
 Found: BOOLEAN;
BEGIN
 FOund := FALSE;
 count := 0;
 For i := 1 TO length(aList) DO
 BEGIN
    count := count + 1;
    IF aList[i] = value THEN
    BEGIN
    found := TRUE;
    BREAK;
    END;
    end;
    Writeln('number of searches =', count);
    LinearSearch := Found;
    end;

FUNCTION BinarySearch(aList : LIST; value : INTEGER) : BOOLEAN;
VAR
l, r, mid, count : INTEGER;
  Found : BOOLEAN;
BEGIN
  Found := FALSE;
  l := 1;
  r := Length(aList);
  count := 0;
  REPEAT
    Count := count + 1;
    mid := (l + r) DIV 2;
     IF aList[mid] = value THEN BEGIN
       Found := TRUE;
       Break;
     END
     ELSE IF aList[mid] < value THEN l := mid + 1
     ELSE r := mid - 1;
     UNTIL l > r;
     Writeln('Number of searches =', count);
     BinarySearch := Found;
    END;

FUNCTION Median( aList : List) : REAL;
VAR
i : INTEGER;
myList : LIST;
BEGIN
   IF length(aList) MOD 2 = 0 THEN
     Median :=  (aList[Length(aList) DIV 2] + Alist[Length(aList) DIV 2 + 1])/2
   ELSE
     Median :=  aList[Length(aList) DIV 2 + 1];
END;

PROCEDURE BubbleSort(VAR aList : LIST);
VAR
 i, j, temp : INTEGER;
BEGIN
FOR i := 1 TO length(aList) - 1 DO
 BEGIN
   FOR j := 1 TO Length(aList) - i DO
   BEGIN
    IF aList[j] > aList[j + 1] THEN
    BEGIN
     temp := aList[j];
     aList[j] := aList[j + 1];
     aList[j + 1] := temp;
   END;
  END;
 END;
END;

FUNCTION Smallest(aList : LIST) : INTEGER;
VAR
i, temp : INTEGER;

Begin
    temp := aList[1];
    FOR i := 2 to length(alist) DO
      IF aList[i] < temp THEN temp := aList[i];
        smallest := temp;
END;
PROCEDURE RandomList(VAR aList : List; n : INTEGER);
VAR
  i : INTEGER;
BEGIN
  Randomize;
  FOR i := 1 TO n DO
    Append(aList, Random(100));
    END;

FUNCTION Average(aList : List) : REAL;
BEGIN
  Average := Sum(aList)/Length(aList);
END;


FUNCTION Sum(AList : LIST) : INTEGER;
VAR
 i, total : integer;
BEGIN
  total := 0;
  for i := 1 TO Length(aList) DO
    total := total + aList[i];
  sum := total;
END;
 PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
 VAR
 index : INTEGER;
BEGIN
 IF (i <= Length(aList)) AND (i > 0) THEN
  BEGIN
   FOR index := i TO Length(aList) - 1 DO
    aList[index] := aList[index + 1];
   aList[0] := Length(aList) - 1;
  END;
END;

 PROCEDURE PrintList(aList : LIST);
 VAR
 i : INTEGER;
BEGIN
   For i:=1 TO Length(alist) DO
   Writeln('Element #', i,' =', aList[i]);
   END;
  FUNCTION Length(aList : LIST) : INTEGER;
 BEGIN
    Length := aList[0];
    END;
  {List Function/Procedures}
PROCEDURE Append(VAR aList : LIST; value : INTEGER);
BEGIN
   aList[0] := Length(alist) + 1;
   aList[Length(aList) ] := value;
END;

PROCEDURE Insert(VAR aList :LIST; i, value : INTEGER);
VAR
  index : INTEGER;
BEGIN
{increase length by 1}
  IF i > Length(aList)  THEN Append(aList, value)
  ELSE IF i > 0 THEN
  BEGIN
  aList[0]:= Length(aList) + 1;
  FOR index := Length(aList) DOWNTO i + 1 DO
    aList[index] := aList[index - 1];
  aList[i] := value;
END;
END;
 {STRING FUNCTIONS}

FUNCTION Substring(s : STRING; start, n : INTEGER) : STRING;
   Var
   i : INTEGER;
   temps : STRING;
BEGIN
   temps[0] := chr(n);
   FOR i := 1 TO n DO
   temps[i] := s[Start + i - 1];
   Substring := temps;

END;

FUNCTION Prefix(s : STRING; n : INTEGER) : STRING;
  Var
    i : INTEGER;
    temps : STRING;
  BEGIN
    IF n > Len(s)  THEN n := len(s);
    temps[0] := chr(n);
    FOR i:= 1 to n DO
      temps[i] := s[i];
    Prefix :=  temps;
  END;

FUNCTION Reverse(s : STRING) : STRING;
  VAR i : INTEGER;
    temps : STRING;
  BEGIN
    temps[0] := s[0];
    FOR i:= 1 to Len(s) DO
       temps[i] := s[Len(s) +1 -i];
       Reverse := temps;
  END;

FUNCTION Concat(s1, s2 : STRING) : STRING;
  VAR
    temps : STRING;
    i : INTEGER;
  BEGIN
     temps[0] := chr(len(s1) + len(s2));
     FOR i := 1 to Len(s1) DO
       temps[i] := s1[i];
     FOR i := 1 to len(s2) DO
       temps[Len(s1) + i] := s2[i];
     temps[0] := chr(Len(s1) + Len(s2));
     Concat := temps;
   end;

FUNCTION Len(s : STRING) : INTEGER;
  BEGIN
    Len := ord(s[0]);
   end;

 FUNCTION Pow(n, p : INTEGER) : INTEGER;
 VAR
   prod, i : INTEGER;
 Begin
    IF p <0 THEN prod := 0
    ELSE
    BEGIN
    prod := 1;
      FOR i :=1 TO P DO
         prod := prod*n;
      END;
      Pow := prod;
    ENd;
 END.

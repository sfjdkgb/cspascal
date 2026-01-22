 UNIT csp;
 INTERFACE

 CONST
    SIZE = 255;
 TYPE
    List = ARRAY[0..SIZE] OF INTEGER;

 FUNCTION Pow(n, p : INTEGER) : INTEGER;

 FUNCTION Len(s : STRING) : INTEGER;

 FUNCTION Concat(s1, s2 : STRING) : STRING;

 FUNCTION Reverse(s : STRING) : STRING;

 FUNCTION Prefix(s : STRING; n : INTEGER) : STRING;

 FUNCTION Substring(s : STRING; start, n : INTEGER) : STRING;

 IMPLEMENTATION

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
      ENd;
      Pow := prod;
    ENd;


 END.

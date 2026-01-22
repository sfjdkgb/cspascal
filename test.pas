 PROGRAM test;
 USES csp;
 VAR
   s : STRING;
 BEGIN
 write('ADD3(1, 2, 3) =', Add3(1,2,3));
 write('ADD3(4, 5, 6) =', Add3(4,5,6));
 writeln('pow(2,2) =  ', pow(2,2));

 read(s);
ENd.
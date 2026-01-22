PROGRAM testconcat;
USES csp;
VAR
   s : STRING;
   BEGIN
   IF concat('mr','murry') = 'mrmurry'  THEN
   write('pass')
   ELSE
   write('fail');
   Read(s);
   END.
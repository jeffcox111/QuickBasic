SCREEN 13
CLS
RANDOMIZE TIMER
DO
x% = INT(RND * 500)
y% = INT(RND * 500)
c% = INT(RND * 256)
FOR i% = 0 TO 320
  PSET (i%, x%), c%
  NEXT i%
FOR w% = 0 TO 200
  PSET (y%, w%), c%
  NEXT w%
LOOP WHILE INKEY$ = ""



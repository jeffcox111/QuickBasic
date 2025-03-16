SCREEN 12
CLS
FOR i% = 0 TO 640
   COLOR 13
   PSET (i%, 273)
   PSET (i%, 204)
   FOR delay% = 1 TO 100: NEXT delay%
NEXT i%
FOR x% = 0 TO 480
  PSET (332, x%)
  PSET (255, x%)
  FOR delay% = 1 TO 100: NEXT delay%
NEXT x%
DRAW "bu240 br64 c2 b l60 b u30 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c2 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c2 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c2 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"

COLOR 9
LOCATE 8, 9: PRINT "Tyrant"
LOCATE 9, 8: PRINT "Software"
LOCATE 10, 7: PRINT "Presents..."
WHILE INKEY$ = "": SLEEP: WEND


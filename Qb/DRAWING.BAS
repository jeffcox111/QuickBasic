DECLARE SUB colr ()
CONST UP = 72, DOWN = 80, LFT = 75, RGHT = 77
CONST UPLFT = 71, uPRGHT = 73, DOWNLFT = 79, DOWNRGHT = 81
CONST SPACEBAR = " "
Null$ = CHR$(0)
Plot$ = ""
DO: LOOP WHILE INKEY$ = ""

SCREEN 12
CLS

DO
   SELECT CASE KeyVal$
      CASE Null$ + CHR$(UP)
         DRAW Plot$ + "U2"
      CASE Null$ + CHR$(DOWN)
         DRAW Plot$ + "D2"
      CASE Null$ + CHR$(LFT)
         DRAW Plot$ + "L2"
      CASE Null$ + CHR$(RGHT)
         DRAW Plot$ + "R2"
      CASE Null$ + CHR$(UPLFT)
         DRAW Plot$ + "H2"
      CASE Null$ + CHR$(uPRGHT)
         DRAW Plot$ + "E2"
      CASE Null$ + CHR$(DOWNLFT)
         DRAW Plot$ + "G2"
      CASE Null$ + CHR$(DOWNRGHT)
         DRAW Plot$ + "F2"
      CASE SPACEBAR
         IF Plot$ = "" THEN Plot$ = "B " ELSE Plot$ = ""
      CASE CHR$(99)
         colr

      CASE ELSE
         ' The user pressed some key other than one of the
         ' direction keys, the  spacebar, or "q", so
         ' don't do anything.
   
   END SELECT

   KeyVal$ = INKEY$

LOOP UNTIL KeyVal$ = "q"

SCREEN 0, 0
WIDTH 80
END

SUB colr
0 LOCATE 30, 1: INPUT "what color now"; c$
  IF c$ = "black" THEN
    COLOR 0
  ELSEIF c$ = "blue" THEN
    COLOR 1
  ELSEIF c$ = "green" THEN
    COLOR 2
  ELSEIF c$ = "cyan" THEN
    COLOR 3
  ELSEIF c$ = "red" THEN
    COLOR 4
  ELSEIF c$ = "magenta" THEN
    COLOR 5
  ELSEIF c$ = "brown" THEN
    COLOR 6
  ELSEIF c$ = "white" THEN
    COLOR 7
  ELSEIF c$ = "gray" THEN
    COLOR 8
  ELSEIF c$ = "light blue" THEN
    COLOR 9
  ELSEIF c$ = "light green" THEN
    COLOR 10
  ELSEIF c$ = "light cyan" THEN
    COLOR 11
  ELSEIF c$ = "light red" THEN
    COLOR 12
  ELSEIF c$ = "light magneta" THEN
    COLOR 13
  ELSEIF c$ = "yellow" THEN
    COLOR 14
  ELSEIF c$ = "bright white" THEN
    COLOR 15
  ELSE
    LOCATE 30, 1
    PRINT "invalid selection"
    WHILE INKEY$ = ""
    SLEEP
    WEND
    GOTO 0
 END IF
LOCATE 30, 1: PRINT "                                   "

END SUB


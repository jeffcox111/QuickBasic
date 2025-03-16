CLS
score% = 0
DO
LOCATE 1, 1: PRINT "score: "; score%
10 IF INKEY$ = CHR$(32) THEN
  score% = score% + 1
ELSE
  GOTO 10
END IF
LOOP UNTIL score% = 10


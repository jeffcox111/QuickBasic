SCREEN 12
1 CLS
COLOR 2
PRINT "-----------------------"
COLOR 9
PRINT " 1. format disk"
PRINT " 2. check system stats"
PRINT " 3. about Tyrant Software Inc."
PRINT " 4. exit"
COLOR 2
PRINT "-----------------------"
PRINT " "
INPUT "what is your selection"; a$

IF a$ = "1" THEN
  CLS
  SHELL "format a:"
  GOTO 1
ELSEIF a$ = "2" THEN
  CLS
  SHELL "chkdsk"
  WHILE INKEY$ = ""
  SLEEP
  WEND
  GOTO 1
ELSEIF a$ = "3" THEN
  CLS
  COLOR 9
  LOCATE 4, 4: PRINT "founder: Travis Larson"
  LOCATE 5, 4: PRINT "associate: Jeff Cox"
  DRAW "c10 b l60 b u30 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
  DRAW "c10 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
  DRAW "c10 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
  DRAW "c10 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
  WHILE INKEY$ = ""
  SLEEP
  WEND
  GOTO 1
ELSEIF a$ = "4" THEN
  COLOR 4
  LOCATE 9, 1: INPUT "are you sure"; b$
  IF b$ = "y" THEN
    END
  ELSE
    GOTO 1
  END IF
ELSE
  CLS
  COLOR 4
  PRINT "invalid selection!!!"
  WHILE INKEY$ = ""
    SLEEP
  WEND
  GOTO 1
END IF


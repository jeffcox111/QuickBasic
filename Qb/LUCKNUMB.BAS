DECLARE SUB rgb (col!, r!, g!, b!)
DECLARE SUB delay ()
DECLARE SUB flash ()
DECLARE SUB intro ()
DECLARE SUB title ()
DECLARE SUB level ()
DECLARE SUB l1 ()
DECLARE SUB l2 ()
DECLARE SUB l3 ()
DECLARE SUB l4 ()
DECLARE SUB leave ()
DECLARE SUB congrat. ()
DECLARE SUB again ()
DECLARE SUB gamble ()
DECLARE SUB earnings (b%, score%, a%, c%)
DECLARE SUB ShowScore (score%)

intro

SUB again
COLOR 8
INPUT "Play Again (y/n)"; u$

IF u$ = "y" THEN
  level
ELSEIF u$ = "n" THEN
  leave
ELSE
  BEEP
  again
END IF
END SUB

SUB congrat.
LOCATE 16, 2
PRINT " ": LOCATE , 2
PRINT "Enter you name:";
LOCATE 17, 17
LINE INPUT ""; nm$: LOCATE , 17
PRINT "Hold, while award is being printed"
LPRINT "-------------------------------------------------"
LPRINT "| You scored a 9 out of 9 in NUMBERS            |"
LPRINT "| On "; DATE$; "                                |"
LPRINT "| We Award "; nm$; " on their job well done!    |"
LPRINT "-------------------------------------------------   "
END SUB

SUB delay
FOR b = 1 TO 80
NEXT b
END SUB

SUB flash
rgb 0, 60, 60, 60
FOR x = 60 TO 1 STEP -1
rgb 0, x, x, x
delay
NEXT x
END SUB

SUB intro
CLS
SCREEN 12
LOCATE 15, 30
PRINT "Tyrant software": LOCATE , 30
PRINT "    Presents"
LOCATE 17, 30
PRINT "    NUMBERS": LOCATE , 30
flash
SLEEP 1
CLS
DRAW "c8 b l60 b u30 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c8 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c8 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c8 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
flash
SLEEP 1
title
END SUB

SUB l1
CLS
COLOR 9
LOCATE 15, 30
PRINT "1 =  50": LOCATE , 30
PRINT "2 = 100"
LOCATE 17, 30
PRINT "3 = 150": LOCATE , 30
PRINT "4 = 200"
LOCATE 19, 30
PRINT "5 = 250"
PRINT " "
LOCATE 21, 30
INPUT "Select wager range"; a%

CLS
score% = 0
    COLOR 5
    RANDOMIZE TIMER
    x% = INT(RND * 2) + 1
    y% = INT(RND * 2) + 1
    z% = INT(RND * 2) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1

    RANDOMIZE TIMER
    x% = INT(RND * 2) + 1
    y% = INT(RND * 2) + 1
    z% = INT(RND * 2) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
    RANDOMIZE TIMER
    x% = INT(RND * 2) + 1
    y% = INT(RND * 2) + 1
    z% = INT(RND * 2) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
    RANDOMIZE TIMER
    x% = INT(RND * 2) + 1
    y% = INT(RND * 2) + 1
    z% = INT(RND * 2) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
    RANDOMIZE TIMER
    x% = INT(RND * 2) + 1
    y% = INT(RND * 2) + 1
    z% = INT(RND * 2) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
    RANDOMIZE TIMER
    x% = INT(RND * 2) + 1
    y% = INT(RND * 2) + 1
    z% = INT(RND * 2) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
    RANDOMIZE TIMER
    x% = INT(RND * 2) + 1
    y% = INT(RND * 2) + 1
    z% = INT(RND * 2) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
    RANDOMIZE TIMER
    x% = INT(RND * 2) + 1
    y% = INT(RND * 2) + 1
    z% = INT(RND * 2) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
    RANDOMIZE TIMER
    x% = INT(RND * 2) + 1
    y% = INT(RND * 2) + 1
    z% = INT(RND * 2) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
    RANDOMIZE TIMER
    x% = INT(RND * 2) + 1
    y% = INT(RND * 2) + 1
    z% = INT(RND * 2) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
PRINT "The score is a "; score%; " out of 9"
WHILE INKEY$ = ""
SLEEP
WEND
  CLS
  flash
  PRINT "Money bet "; a%
  PRINT "Score "; score%
  LET moneywon% = a% * score%
  LET total% = moneywon% * 50
  PRINT "You won $"; total%
  WHILE INKEY$ = ""
  SLEEP
  WEND
again


IF score% = 9 THEN
  congrat.
END IF
END SUB

SUB l2
CLS
COLOR 9
LOCATE 15, 30
PRINT "1 =  50": LOCATE , 30
PRINT "2 = 100"
LOCATE 17, 30
PRINT "3 = 150": LOCATE , 30
PRINT "4 = 200"
LOCATE 19, 30
PRINT "5 = 250"
PRINT " "
LOCATE 21, 30
INPUT "Select wager range"; a%

COLOR 9
CLS
score% = 0
    RANDOMIZE TIMER
    x% = INT(RND * 3) + 1
    y% = INT(RND * 3) + 1
    z% = INT(RND * 3) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
    RANDOMIZE TIMER
    x% = INT(RND * 3) + 1
    y% = INT(RND * 3) + 1
    z% = INT(RND * 3) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
    RANDOMIZE TIMER
    x% = INT(RND * 3) + 1
    y% = INT(RND * 3) + 1
    z% = INT(RND * 3) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
    RANDOMIZE TIMER
    x% = INT(RND * 3) + 1
    y% = INT(RND * 3) + 1
    z% = INT(RND * 3) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 3) + 1
    y% = INT(RND * 3) + 1
    z% = INT(RND * 3) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 3) + 1
    y% = INT(RND * 3) + 1
    z% = INT(RND * 3) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
    RANDOMIZE TIMER
    x% = INT(RND * 3) + 1
    y% = INT(RND * 3) + 1
    z% = INT(RND * 3) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
    RANDOMIZE TIMER
    x% = INT(RND * 3) + 1
    y% = INT(RND * 3) + 1
    z% = INT(RND * 3) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 3) + 1
    y% = INT(RND * 3) + 1
    z% = INT(RND * 3) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 3) + 1
    y% = INT(RND * 3) + 1
    z% = INT(RND * 3) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
PRINT "The score of is a "; score%; " out of 9"
WHILE INKEY$ = ""
SLEEP
WEND
  CLS
  flash
  PRINT "Money bet "; a%
  PRINT "Score "; score%
  LET moneywon% = a% * score%
  LET total% = moneywon% * 50
  PRINT "You won $"; total%
  WHILE INKEY$ = ""
  SLEEP
  WEND

IF score% = 9 THEN
  congrat.
END IF
again
END SUB

SUB l3
CLS
COLOR 9
LOCATE 15, 30
PRINT "1 =  50": LOCATE , 30
PRINT "2 = 100"
LOCATE 17, 30
PRINT "3 = 150": LOCATE , 30
PRINT "4 = 200"
LOCATE 19, 30
PRINT "5 = 250"
PRINT " "
LOCATE 21, 30
INPUT "Select wager range"; a%

COLOR 9
CLS
score% = 0
    RANDOMIZE TIMER
    x% = INT(RND * 4) + 1
    y% = INT(RND * 4) + 1
    z% = INT(RND * 4) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 4) + 1
    y% = INT(RND * 4) + 1
    z% = INT(RND * 4) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 4) + 1
    y% = INT(RND * 4) + 1
    z% = INT(RND * 4) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 4) + 1
    y% = INT(RND * 4) + 1
    z% = INT(RND * 4) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 4) + 1
    y% = INT(RND * 4) + 1
    z% = INT(RND * 4) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 4) + 1
    y% = INT(RND * 4) + 1
    z% = INT(RND * 4) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 4) + 1
    y% = INT(RND * 4) + 1
    z% = INT(RND * 4) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 4) + 1
    y% = INT(RND * 4) + 1
    z% = INT(RND * 4) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 4) + 1
    y% = INT(RND * 4) + 1
    z% = INT(RND * 4) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 4) + 1
    y% = INT(RND * 4) + 1
    z% = INT(RND * 4) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
PRINT "The score of is a "; score%; " out of 9"
WHILE INKEY$ = ""
SLEEP
WEND

  CLS
  flash
  PRINT "Money bet "; a%
  PRINT "Score "; score%
  LET moneywon% = a% * score%
  LET total% = moneywon% * 50
  PRINT "You won $"; total%
  WHILE INKEY$ = ""
  SLEEP
  WEND

IF score% = 9 THEN
  congrat.
END IF
again

END SUB

SUB l4
CLS
COLOR 9
LOCATE 15, 30
PRINT "1 =  50": LOCATE , 30
PRINT "2 = 100"
LOCATE 17, 30
PRINT "3 = 150": LOCATE , 30
PRINT "4 = 200"
LOCATE 19, 30
PRINT "5 = 250"
PRINT " "
LOCATE 21, 30
INPUT "Select wager range"; a%

COLOR 9
CLS
score% = 0
    RANDOMIZE TIMER
    x% = INT(RND * 6) + 1
    y% = INT(RND * 6) + 1
    z% = INT(RND * 6) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 6) + 1
    y% = INT(RND * 6) + 1
    z% = INT(RND * 6) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 6) + 1
    y% = INT(RND * 6) + 1
    z% = INT(RND * 6) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 6) + 1
    y% = INT(RND * 6) + 1
    z% = INT(RND * 6) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% = y% = z% THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 6) + 1
    y% = INT(RND * 6) + 1
    z% = INT(RND * 6) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% + y% + z% = x% * 3 AND y% * 3 AND z% * 3 THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 6) + 1
    y% = INT(RND * 6) + 1
    z% = INT(RND * 6) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% + y% + z% = x% * 3 AND y% * 3 AND z% * 3 THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 6) + 1
    y% = INT(RND * 6) + 1
    z% = INT(RND * 6) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% + y% + z% = x% * 3 AND y% * 3 AND z% * 3 THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 6) + 1
    y% = INT(RND * 6) + 1
    z% = INT(RND * 6) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% + y% + z% = x% * 3 AND y% * 3 AND z% * 3 THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 6) + 1
    y% = INT(RND * 6) + 1
    z% = INT(RND * 6) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% + y% + z% = x% * 3 AND y% * 3 AND z% * 3 THEN
  BEEP
  score% = score% + 1
END IF
    PRINT " "
    SLEEP 1
   
    RANDOMIZE TIMER
    x% = INT(RND * 6) + 1
    y% = INT(RND * 6) + 1
    z% = INT(RND * 6) + 1
    PRINT "Roll of three dice:"
    PRINT "die 1 ="; x%
    PRINT "and die 2 ="; y%
    PRINT "and die 3 ="; z%
IF x% + y% + z% = x% * 3 AND y% * 3 AND z% * 3 THEN
  BEEP
  score% = score% + 1
END IF
PRINT "The score of is a "; score%; " out of 9"
WHILE INKEY$ = ""
SLEEP
WEND

  CLS
  flash
  PRINT "Money bet "; a%
  PRINT "Score "; score%
  LET moneywon% = a% * score%
  LET total% = moneywon% * 50
  PRINT "You won $"; total%
  WHILE INKEY$ = ""
  SLEEP
  WEND

IF score% = 9 THEN
  congrat.
END IF
again

END SUB

SUB leave
          COLOR 12
          CLS
          PRINT "Thank You for using our software"
          PRINT " "
          PRINT " "
          PRINT " "
          PRINT " "
          PRINT " "
          PRINT " "
          PRINT " "
          PRINT " "
          PRINT " "
          PRINT " "
          PRINT " "
          PRINT " "
          PRINT " "
          PRINT " "
          PRINT " "
          PRINT " "
          COLOR 8
          PRINT " "
          PRINT " "
          PRINT " "
          PRINT "                                             software "
          DRAW "c8 b l30 b d53 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
          DRAW "c8 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
          DRAW "c8 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
          DRAW "c8 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
          flash

END SUB

SUB level
CLS
COLOR 6
PRINT "Select you level"
PRINT " "
COLOR 1
PRINT "Level 1 = 2 varibles / Easiest"
PRINT " "
COLOR 2
PRINT "Level 2 = 3 varibles / Easy"
PRINT " "
COLOR 3
PRINT "Level 3 = 4 varibles / Some difficulty"
PRINT " "
COLOR 4
PRINT "Level 4 = 6 varibles / Hardest"
PRINT " "
COLOR 5
PRINT "Type Quit to leave"
PRINT " "
INPUT "What level do you choose"; lvl$

IF lvl$ = "1" THEN
  l1
ELSEIF lvl$ = "2" THEN
  l2
ELSEIF lvl$ = "3" THEN
  l3
ELSEIF lvl$ = "4" THEN
  l4
ELSEIF lvl$ = "Quit" THEN
  leave
ELSE
  WHILE INKEY$ = ""
  PRINT "You have choosen an invalid option"
  BEEP
  SLEEP
  WEND
  level
END IF
END SUB

SUB rgb (col, r, g, b)
OUT &H3C8, col    'Certain Color Number
OUT &H3C9, r    'Red Value of color
OUT &H3C9, g    'Green Value of color
OUT &H3C9, b    'Blue Value of color
END SUB

SUB title
CLS
SCREEN 12
DRAW "c1 bl100 bu30 u3 r3 d3 l3 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3"
DRAW "c1 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3 bf3 u3 r3 d3 l3 bd3 u3 r3 d3 l3"
DRAW "c1 bf3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bf3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bf3 u3 r3 d3 l3"
DRAW "c1 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3"
DRAW "c1 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3 bd24 u3 r3 d3 l3"
DRAW "c1 br10 bu24 u3 r3 d3 l3 bd3 u3 r3 d3 l3bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3"
DRAW "c1 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 br3 u3 r3 d3 l3 br3 u3 r3 d3 l3"
DRAW "c1 br3 u3 r3 d3 l3 br3 u3 r3 d3 l3 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3"
DRAW "c1 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3"
DRAW "c1 br10 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 "
DRAW "c1 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bu18 bf3 u3 r3 d3 l3 bf3 u3 r3 d3 l3"
DRAW "c1 bf3 u3 r3 d3 l3 be3 u3 r3 d3 l3 be3 u3 r3 d3 l3 br3 u3 r3 d3 l3 bu3 u3 r3 d3 l3"
DRAW "c1 bu3 u3 r3 d3 l3 bu3 u3 r3 d3 l3 bd12 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3"
DRAW "c1 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3"
DRAW "c1 br10 bu21 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3"
DRAW "c1 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 br3 u3 r3 d3 l3 be3 u3 r3 d3 l3"
DRAW "c1 be3 u3 r3 d3 l3 bu3 u3 r3 d3 l3 bh3 u3 r3 d3 l3 bl3 u3 r3 d3 l3 br3 be3 u3 r3 d3 l3"
DRAW "c1 bu3 u3 r3 d3 l3 bh3 u3 r3 d3 l3 bh3 u3 r3 d3 l3 bl3 u3 r3 d3 l3"
DRAW "c1 br18 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3"
DRAW "c1 br3 u3 r3 d3 l3 br3 u3 r3 d3 l3 br3 u3 r3 d3 l3 br3 u3 r3 d3 l3"
DRAW "c1 bu12 u3 r3 d3 l3 bl3 u3 r3 d3 l3 bl3 u3 r3 d3 l3 bl3 u3 r3 d3 l3"
DRAW "c1 bu12 u3 r3 d3 l3 br3 u3 r3 d3 l3 br3 u3 r3 d3 l3 br3 u3 r3 d3 l3"
DRAW "c1 br12 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3"
DRAW "c1 bu24 br3 u3 r3 d3 l3 br3 u3 r3 d3 l3 bf3 u3 r3 d3 l3 bd3 u3 r3 d3 l3"
DRAW "c1 bd3 u3 r3 d3 l3 bg3 u3 r3 d3 l3 bl3 u3 r3 d3 l3 bf3 u3 r3 d3 l3 bf3 u3 r3 d3 l3"
DRAW "c1 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3"
DRAW "c1 bu24 br10 u3 r3 d3 l3 br3 u3 r3 d3 l3 br3 u3 r3 d3 l3 br3 u3 r3 d3 l3 br3 u3 r3 d3 l3 bl12"
DRAW "c1 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 br3 u3 r3 d3 l3 br3 u3 r3 d3 l3 br3 u3 r3 d3 l3"
DRAW "c1 br3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bd3 u3 r3 d3 l3 bl3 u3 r3 d3 l3 bl3 u3 r3 d3 l3"
DRAW "c1 bl3 u3 r3 d3 l3 bl3 u3 r3 d3 l3"
flash
LOCATE 15, 1
COLOR 7
PRINT "-----------------------------------------------------------------------------": LOCATE , 1
LOCATE 16, 30
COLOR 1
PRINT "By Travis Larson": LOCATE , 30
COLOR 4
LOCATE 19, 30
PRINT DATE$: LOCATE , 30
LOCATE 20, 30
PRINT TIME$: LOCATE , 30
WHILE INKEY$ = ""
SLEEP
WEND
level
END SUB


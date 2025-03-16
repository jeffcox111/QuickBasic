DECLARE SUB flash1 ()
DECLARE SUB delay ()
DECLARE SUB rgb (col!, r!, g!, b!)
DECLARE SUB X1 ()
DECLARE SUB ascii ()
DECLARE SUB menu ()
DECLARE SUB colr ()
DECLARE SUB colr2 ()
DECLARE SUB math ()
DECLARE SUB calc. ()
DECLARE SUB ShowScore (score%)
DECLARE FUNCTION PlayGame% ()
DECLARE SUB EraseTarget (target.position%)
DECLARE SUB ShootArrow (a%, target.position%)
DECLARE FUNCTION ShowTarget% ()
DECLARE SUB DrawScreen ()
DECLARE SUB arrow ()
DECLARE SUB util ()
DECLARE SUB Center (row, text$)
SCREEN 12
X1
flash1
CLS
DRAW "c4 e45 g90"
flash1
DRAW "c4 e45 h45 f90"
flash1
LOCATE 15, 45
COLOR 1
PRINT "Tyrant Software"
LOCATE 16, 45
PRINT "presents"
WHILE INKEY$ = ""
SLEEP
WEND
menu

SUB arrow
RANDOMIZE TIMER        'seed random number generater.
CALL DrawScreen        'draw the playing screen.
score% = PlayGame      'Play the game.
CALL ShowScore(score%) 'Show the final score.

END SUB

SUB ascii
CLS
COLOR 9
PRINT " UP = 0 + 72, DOWN = 0 + 80, LFT = 0 + 75, RGHT = 0 + 77"
PRINT " UPLFT = 0 + 71, UPRGHT = 0 + 73, DOWNLFT = 0 + 79, DOWNRGHT = 0 + 81"
COLOR 15
PRINT " Press ESC to STOP   (By the way, ESC = 27)"
WHILE b$ <> CHR$(27)
b$ = INKEY$
IF b$ <> "" THEN LOCATE 4, 1: PRINT b$; ASC(b$)
WEND
menu
END SUB

SUB calc.
          CLS
          COLOR 4
          PRINT "Calculation ver 0.1"
          COLOR 3
          PRINT " by Travis Larson"
          COLOR 1
          PRINT "-----------------------------------------------------------------"
          COLOR 5
          PRINT "1. Addition"
          PRINT "2. Subtraction"
          PRINT "3. Multiplication"
          PRINT "4. Division"
          PRINT "5. Powers"
          PRINT "6. Quit"
          INPUT "Your choice is"; a%
         
            IF a% = 1 THEN
              CLS
              INPUT "What is the first #"; b
              INPUT "What is the second #"; c
              LET d = (b) + (c)
              COLOR 13
              PRINT "the answer is: "; d
              WHILE INKEY$ = ""
              SLEEP
              WEND
              calc.
            ELSEIF a% = 2 THEN
              CLS
              INPUT "What is the first #"; b
              INPUT "What is the second #"; c
              LET d = (b) - (c)
              COLOR 14
              PRINT "the answer is: "; d
              WHILE INKEY$ = ""
              SLEEP
              WEND
              calc.
            ELSEIF a% = 3 THEN
              CLS
              INPUT "What is the first #"; b
              INPUT "What is the second #"; c
              LET d = (b) * (c)
              COLOR 15
              PRINT "The answer is: "; d
              WHILE INKEY$ = ""
              SLEEP
              WEND
              calc.
            ELSEIF a% = 4 THEN
              CLS
              INPUT "What is the # inside the bar"; b
              INPUT "What is the # out the bar"; c
              LET d = b / c
              COLOR 1
              PRINT "The answer is: "; d
              WHILE INKEY$ = ""
              SLEEP
              WEND
              calc.
            ELSEIF a% = 5 THEN
              CLS
              INPUT "What is the base"; b
              INPUT "What is the power"; c
              LET d = b ^ c
              COLOR 2
              PRINT "The answer is: "; d
              WHILE INKEY$ = ""
              SLEEP
              WEND
              calc.
            ELSEIF a% = 6 THEN
              CLS
              menu
            ELSE
              CLS
              PRINT "invalid selection"
              WHILE INKEY$ = ""
              SLEEP
              WEND
              calc.
            END IF

END SUB

SUB Center (row, text$)
LOCATE row, 41 - LEN(text$) / 2
PRINT text$;
END SUB

SUB colr
  CLS
  FOR i% = 1 TO 15
    COLOR i%
    PRINT i%
    NEXT i%
LOCATE 17, 1
PRINT "press enter to exit"
WHILE INKEY$ <> CHR$(13)
SLEEP
WEND
menu
END SUB

SUB colr2
SCREEN 0
FOR i% = 17 TO 31
  COLOR i%
  PRINT i%
  NEXT i%
LOCATE 17, 1: PRINT "press esc to exit"
WHILE INKEY$ <> CHR$(27)
  SLEEP
WEND
SCREEN 12
menu
END SUB

SUB delay
FOR bbb = 1 TO 2000
NEXT bbb
END SUB

SUB DrawScreen
   CLS
   FOR x% = 1 TO 10
     LOCATE x% * 2 + 2, 1
     COLOR 9
     PRINT "-------------------------------"
     IF x% < 10 THEN
       LOCATE x% * 2 + 3, 1
       COLOR 2
       PRINT x%; ">>-->"
     END IF
   NEXT x%

END SUB

SUB EraseTarget (target.position%)
   LOCATE target.position% * 2 + 3, 60
   PRINT "  "
END SUB

SUB flash1
rgb 0, 60, 60, 60
FOR x = 60 TO 1 STEP -1
rgb 0, x, x, x
delay
NEXT x
END SUB

SUB math
88 CLS
COLOR 4
PRINT "MATH  ver 2.3"
COLOR 3
PRINT " by Jeffrey Cox"
COLOR 1
PRINT "-------------------------------------------------"
COLOR 5
PRINT "1. volume of a cone"
PRINT "2. volume of a sphere"
PRINT "3. volume of a pyramid"
PRINT "4. volume of cylinder"
PRINT "5. volume of prizm"
PRINT "6. vomume of rectangular cube"
PRINT "7. area of circle"
PRINT "8. area of triangle"
PRINT "9. area of rectangular plane"
PRINT "10. glossary"
PRINT "11. exit"
PRINT " "
PRINT " "
INPUT "Your choice is"; choice%

IF choice% = 1 THEN
  CLS
  INPUT "diameter of cone"; d
  INPUT "height of cone"; h
  LET v = 1 / 2 * (3.14 * (1 / 2 * d) ^ 2 * h)
  COLOR 12
  PRINT "the volume of the cone is"; v
  WHILE INKEY$ = ""
  SLEEP
  WEND
  GOTO 88
ELSEIF choice% = 2 THEN
  CLS
  INPUT "height of sphere"; h
  INPUT "diameter of sphere"; d
  LET v = 2 / 3 * (3.14 * (1 / 2 * d) ^ 2 * h)
  COLOR 12
  PRINT "the volume of the sphere is"; v
  WHILE INKEY$ = ""
  SLEEP
  WEND
  GOTO 88
ELSEIF choice% = 3 THEN
  CLS
  INPUT "width of pyramid"; w
  INPUT "length of pyramid"; l
  INPUT "height of pyramid"; h
  LET v = 1 / 3 * l * w * h
  COLOR 12
  PRINT "the volume of the pyramid is"; v
  WHILE INKEY$ = ""
  SLEEP
  WEND
  GOTO 88
ELSEIF choice% = 4 THEN
  CLS
  INPUT "diameter of cylinder"; d
  INPUT "height of cylinder"; h
  LET v = 3.14 * (.5 * d) ^ 2 * h
  COLOR 12
  PRINT "the volume of the cylinder is"; v
  WHILE INKEY$ = ""
  SLEEP
  WEND
  GOTO 88
ELSEIF choice% = 5 THEN
  CLS
  INPUT "height of prizm"; h
  INPUT "width of prizm"; w
  INPUT "lenghth of prizm"; l
  LET v = (.5 * w) * h * l
  COLOR 12
  PRINT "the volume of the prizm is"; v
  WHILE INKEY$ = ""
  SLEEP
  WEND
  GOTO 88
ELSEIF choice% = 6 THEN
  CLS
  INPUT "enter the length"; l
  INPUT "enter the width"; w
  INPUT "enter the height"; h
  LET v = l * w * h
  COLOR 12
  PRINT " the volume is"; v
  WHILE INKEY$ = ""
  SLEEP
  WEND
  GOTO 88
ELSEIF choice% = 7 THEN
  CLS
  INPUT "diameter of circle"; d
  LET a = 3.14 * (.5 * d) ^ 2
  COLOR 12
  PRINT "the area of the circle is"; a
  WHILE INKEY$ = ""
  SLEEP
  WEND
  GOTO 88
ELSEIF choice% = 8 THEN
  CLS
  INPUT "height of triangle"; h
  INPUT "width of triangle"; w
  LET a = .5 * h * w
  COLOR 12
  PRINT "area of the triangle is"; a
  WHILE INKEY$ = ""
  SLEEP
  WEND
  GOTO 88
ELSEIF choice% = 9 THEN
  CLS
  INPUT "height of rectangle"; h
  INPUT "lenght of rectangle"; l
  LET a = l * h
  COLOR 12
  PRINT "the area is"; a
  WHILE INKEY$ = ""
  SLEEP
  WEND
  GOTO 88
ELSEIF choice% = 10 THEN
  CLS
  PRINT "cone -- a tube-like object that comes to a point at one end"
  PRINT "sphere -- a ball shaped object"
  PRINT "pyramid -- a cube with a point at one end"
  PRINT "cylinder -- a tube shaped object"
  PRINT "prizm -- triangular shaped tube"
  PRINT "rectangular cube -- an object with six sides of right angled squares"
  PRINT "circle -- a round shape"
  PRINT "triangle -- a polygon with three sides and points"
  PRINT "rectangular plane -- a polygon"
  PRINT "diameter -- length across a circle"
  PRINT "radius -- half of diameter"
  PRINT "area -- space that a flat plain takes up"
  PRINT "volume -- space that a three dimensional object takes up"
  WHILE INKEY$ = ""
  SLEEP
  WEND
  GOTO 88
ELSEIF choice% = 11 THEN
  COLOR 10
  INPUT "are you sure"; a$
  IF a$ = "y" THEN
    PRINT "Goodbye!!!"
    COLOR 1
    menu
  ELSE GOTO 88
  END IF
ELSE
  COLOR 2
  PRINT "Invalid selection!!!"
  WHILE INKEY$ = ""
    SLEEP
  WEND
  GOTO 88
END IF

END SUB

SUB menu
CLS
COLOR 9
PRINT "system menu"
COLOR 2
PRINT "---------------------------------"
COLOR 9
PRINT "1. ascii code test"
PRINT "2. color test"
PRINT "3. flashing color test"
PRINT "4. math utilities"
PRINT "5. basic calculator"
PRINT "6. arrow game"
PRINT "7. system stats"
LOCATE 12, 1
COLOR 14
INPUT "what is you selection"; a$

IF a$ = "1" THEN
  ascii
ELSEIF a$ = "2" THEN
  colr
ELSEIF a$ = "3" THEN
  colr2
ELSEIF a$ = "4" THEN
  math
ELSEIF a$ = "5" THEN
  calc.
ELSEIF a$ = "6" THEN
  arrow
ELSEIF a$ = "7" THEN
  util
ELSE
  COLOR 4
  PRINT "that selection has not yet been programed"
  WHILE INKEY$ = ""
  SLEEP
  WEND
  menu
END IF
END SUB

FUNCTION PlayGame%
  score% = 0
  FOR x% = 1 TO 25
    target.position% = ShowTarget%
    start.time& = TIMER
    shot.fired% = 0

    DO
      a% = VAL(INKEY$)
      IF a% >= 1 AND a% <= 9 THEN
        CALL ShootArrow(a%, target.position%)
        shot.fired% = 1
      END IF
    LOOP UNTIL (shot.fired%) OR (TIMER > start.time& + 1)

    IF a% = target.position% THEN
      BEEP
      score% = score% + 1
    END IF

    CALL EraseTarget(target.position%)
  NEXT x%
  PlayGame% = score%

END FUNCTION

SUB rgb (col, r, g, b)
OUT &H3C8, col    'Certain Color Number
OUT &H3C9, r    'Red Value of color
OUT &H3C9, g    'Green Value of color
OUT &H3C9, b    'Blue Value of color

END SUB

SUB ShootArrow (a%, target.position%)
  FOR x% = 4 TO 60
    LOCATE a% * 2 + 3, x%
    COLOR 2
    PRINT ">>-->"
    FOR dely = 1 TO 50: NEXT dely
    LOCATE a% * 2 + 3, x%
    PRINT "   "
  NEXT x%
  LOCATE a% * 2 + 3, 4
  COLOR 2
  PRINT ">>-->"

END SUB

SUB ShowScore (score%)
  LOCATE 20, 60
  PRINT "---------------------"
  LOCATE 21, 60
  COLOR 3
  PRINT "  Your score is"; score%
  LOCATE 22, 60
  PRINT "---------------------"
  WHILE INKEY$ = ""
  SLEEP
  WEND
  menu
END SUB

FUNCTION ShowTarget%
  p% = INT(9 * RND + 1)
  LOCATE p% * 2 + 3, 60
  COLOR 4
  PRINT "x"
  ShowTarget% = p%
END FUNCTION

SUB util
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
INPUT "what is your selection"; d$

IF d$ = "1" THEN
  CLS
  SHELL "format a:"
  GOTO 1
ELSEIF d$ = "2" THEN
  CLS
  SHELL "chkdsk"
  WHILE INKEY$ = ""
  SLEEP
  WEND
  GOTO 1
ELSEIF d$ = "3" THEN
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
ELSEIF d$ = "4" THEN
  COLOR 4
  LOCATE 9, 1: INPUT "are you sure"; b$
  IF b$ = "y" THEN
    menu
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

END SUB

SUB X1
CLS
DRAW "c8 b l60 b u30 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c8 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c8 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c8 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"

END SUB


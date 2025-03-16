DECLARE SUB flash1 ()
DECLARE SUB delay ()
DECLARE SUB rgb (col!, r!, g!, b!)
DECLARE SUB mainmenu ()
DECLARE SUB intro ()
DECLARE SUB logo ()
DECLARE SUB mathmenu ()
DECLARE SUB mathold ()
DECLARE SUB mathup ()
DECLARE SUB mathnew ()
DECLARE SUB direct ()
DECLARE SUB granted ()
DECLARE SUB calc. ()
DECLARE SUB inverse ()
DECLARE SUB def. ()
DECLARE SUB equation ()
DECLARE SUB sparkle ()
DECLARE SUB loadgfx (pic$)
DECLARE SUB loadpal (pal$)
CLS
SCREEN 13
loadpal "c:\qb\tyrant.pal"
loadgfx "c:\qb\tyrant.gfx"
WHILE INKEY$ = "": SLEEP: WEND
CLS
SCREEN 12
LOCATE 15, 30
PRINT "Tyrant software"
PRINT "                                 Presents"
PRINT "                               QBasic  Math"
flash1
SLEEP 1
CLS
DRAW "c8 b l60 b u30 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c8 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c8 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c8 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
flash1
SLEEP 1
CLS
intro
CLS

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
          INPUT "Your choice is"; A%
          BEEP
           
            IF A% = 1 THEN
              CLS
              INPUT "What is the first #"; b
              INPUT "What is the second #"; c
              LET d = (b) + (c)
              COLOR 13
              PRINT "the answer is: "; d
              BEEP
              WHILE INKEY$ = ""
              SLEEP
              WEND
              calc.
            ELSEIF A% = 2 THEN
              CLS
              INPUT "What is the first #"; b
              INPUT "What is the second #"; c
              LET d = (b) - (c)
              COLOR 14
              PRINT "the answer is: "; d
              BEEP
              WHILE INKEY$ = ""
              SLEEP
              WEND
              calc.
            ELSEIF A% = 3 THEN
              CLS
              INPUT "What is the first #"; b
              INPUT "What is the second #"; c
              LET d = (b) * (c)
              COLOR 15
              PRINT "The answer is: "; d
              BEEP
              WHILE INKEY$ = ""
              SLEEP
              WEND
              calc.
            ELSEIF A% = 4 THEN
              CLS
              INPUT "What is the # inside the bar"; b
              INPUT "What is the # out the bar"; c
              LET d = b / c
              COLOR 1
              PRINT "The answer is: "; d
              BEEP
              WHILE INKEY$ = ""
              SLEEP
              WEND
              calc.
            ELSEIF A% = 5 THEN
              CLS
              INPUT "What is the base"; b
              INPUT "What is the power"; c
              LET d = b ^ c
              COLOR 2
              PRINT "The answer is: "; d
              BEEP
              WHILE INKEY$ = ""
              SLEEP
              WEND
              calc.
            ELSEIF A% = 6 THEN
              CLS
              mathmenu
            ELSE
              CLS
              WHILE INKEY$ <> CHR$(13)
              PRINT "Invalid selection"
              DO
              BEEP
              LOOP UNTIL INKEY$ = CHR$(27)
              WEND
              calc.
            END IF

END SUB

SUB def.
CLS
COLOR 4
PRINT "Algebria Definations Ver. 1.0"
COLOR 3
PRINT " by Travis Larson"
COLOR 1
PRINT "--------------------------------------------------------------"
PRINT " "
PRINT " "
COLOR 5
PRINT "1. Quadratic Equation"
COLOR 6
PRINT " "
PRINT "2. Pi"
PRINT " "
COLOR 7
PRINT "3. Multiplicative Inverse"
PRINT " "
COLOR 10
PRINT "4. Multiplicative Identity"
PRINT " "
COLOR 8
PRINT "5. Additive Inverse"
PRINT " "
COLOR 11
PRINT "6. Additive Identity"
PRINT " "
COLOR 9
PRINT "7. Quit"
PRINT " "
PRINT " "
PRINT " "
PRINT " "
PRINT " "
PRINT " "
INPUT "What would you like to know the meaning of"; d%
         
  IF d% = 1 THEN
    CLS
    COLOR 1
    PRINT "The Wisemen of the East and I have decided that"
    PRINT "the QUADRATIC EQUATION means:"
    COLOR 5
    PRINT " "
    PRINT "A polynomial equation: it's general form = ax^2 + bx + c = 0"
    WHILE INKEY$ = ""
    SLEEP
    WEND
    def.
  ELSEIF d% = 2 THEN
    CLS
    COLOR 1
    PRINT "The Wisemen of the East and I have decided that"
    PRINT "PI means:"
    COLOR 5
    PRINT "Ratio of the circumference of a circle to the diameter of a circle"
    PRINT "it is commonly written as 3.14, but is an nonrepeating, non "
    PRINT "terminating decimal"
    WHILE INKEY$ = ""
    SLEEP
    WEND
    def.
  ELSEIF d% = 3 THEN
    CLS
    COLOR 1
    PRINT "The Wisemen of the East and I have decided that"
    PRINT "the MULTIPLICATIVE INVERSE is:"
    COLOR 5
    PRINT "The reciprocal of a number so that when multiplied by the given"
    PRINT "number gives you 1"
    WHILE INKEY$ = ""
    SLEEP
    WEND
    def.
  ELSEIF d% = 4 THEN
    CLS
    COLOR 1
    PRINT "The Wisemen of the East and I have decided that"
    PRINT "the Multiplicative identity is:"
    COLOR 5
    PRINT "The number you get when you multiply X by 1/X this number is 1."
    WHILE INKEY$ = ""
    SLEEP
    WEND
    def.
  ELSEIF d% = 5 THEN
    CLS
    COLOR 1
    PRINT "The Wisemen of the East and I have decided that"
    PRINT "the Additive inverse is:"
    COLOR 5
    PRINT "the opposite of a number such that when added to the orginal number"
    PRINT "gives you 0."
    WHILE INKEY$ = ""
    SLEEP
    WEND
    def.
  ELSEIF d% = 6 THEN
    CLS
    COLOR 1
    PRINT "The Wisemen of the East and I have decided that"
    PRINT "the Additive identity is:"
    COLOR 5
    PRINT "The Number is 0."
    WHILE INKEY$ = ""
    SLEEP
    WEND
    def.
  ELSEIF d% = 7 THEN
    CLS
    PRINT "If you didn't hear music, you need a new computer"
    Music$ = "MBT180o2P2P8L8GGGL2E-P24P8L8FFFL2D"
    PLAY Music$
    WHILE PLAY(o) > 5: WEND
    mathmenu
  ELSE
    CLS
    BEEP
    FOR i% = 37 TO 500 STEP 5
    SOUND i%, i% / 1000
    NEXT i%
    WHILE INKEY$ <> CHR$(13)
    SLEEP
    WEND
    def.
  END IF

END SUB

SUB delay
FOR bbb = 1 TO 80
NEXT bbb
END SUB

SUB direct
CLS
COLOR 10
PRINT "Direct Variation menu"
COLOR 11
PRINT " "
PRINT "A=kB"
PRINT " "
COLOR 12
PRINT "1. Solve for A"
COLOR 13
PRINT " "
PRINT "2. Solve for B"
PRINT " "
COLOR 14
PRINT "3. Quit"
PRINT " "
PRINT " "
PRINT " "
PRINT " "
PRINT " "
PRINT " "
INPUT "What is your choose: "; d%
         
  IF d% = 1 THEN
    CLS
    COLOR 7
    PRINT "A=kB"
    COLOR 8
    INPUT "What is A"; A
    COLOR 9
    INPUT "What is B"; b
    COLOR 10
    INPUT "What is the other B"; c
    LET k = A / b
    LET E = k * c
    COLOR 11
    PRINT "The answer you seek is: "; E
    WHILE INKEY$ = ""
    SLEEP
    WEND
    direct
  ELSEIF d% = 2 THEN
    CLS
    COLOR 7
    PRINT "A=kB"
    COLOR 8
    INPUT "What is A"; A
    COLOR 9
    INPUT "What is B"; b
    COLOR 10
    INPUT "What is the other A"; c
    LET k = A / b
    LET E = c / k
    COLOR 11
    PRINT "The answer you seek is: "; E
    WHILE INKEY$ = ""
    SLEEP
    WEND
    direct
  ELSEIF d% = 3 THEN
    CLS
    mathmenu
  ELSE
    CLS
    BEEP
    WHILE INKEY$ <> CHR$(13)
    SLEEP
    WEND
    direct
  END IF

END SUB

SUB equation
CLS
COLOR 4
PRINT "Equation of a line ver. 1.0"
COLOR 3
PRINT " by Travis Larson"
COLOR 1
PRINT "---------------------------------------------------------------"
COLOR 5
PRINT " "
PRINT "1. Equation of a line"
PRINT " "
PRINT "2. Quit"
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
INPUT "Your choose goes here |--->"; f%

  IF f% = 1 THEN
    CLS
    COLOR 2
    INPUT "What is X1"; A
    INPUT "What is Y1"; b
    INPUT "What is X2"; c
    INPUT "What is Y2"; d
    LET m = (d - b) / (c - A)
    COLOR 7
    PRINT "The slope is:"; m
    LET x = b - (m * A)
    PRINT " The Y - intercept is:"; x
    WHILE INKEY$ = ""
    SLEEP
    WEND
    equation
  ELSEIF f% = 2 THEN
    mathmenu
  ELSE
    COLOR 3
    BEEP
    PRINT "What do you think this is, do you think you can make you own options"
    WHILE INKEY$ = ""
    SLEEP
    WEND
    equation
  END IF

END SUB

SUB flash1
rgb 0, 60, 60, 60
FOR x = 60 TO 1 STEP -1
rgb 0, x, x, x
delay
NEXT x
END SUB

SUB granted
  CLS
  PRINT " "
  COLOR 12
  PRINT "Access Granted"
  BEEP
  WHILE INKEY$ = ""
  SLEEP
  WEND
  mainmenu
END SUB

SUB intro
COLOR 8
LOCATE 10, 20
PRINT STRING$(80, "Ä"):  LOCATE , 10
PRINT " Welcome to the first production of Tyrant software"
PRINT " The program that follows is a successful attempt at programing"
PRINT STRING$(80, "Ä")
COLOR 7
PRINT "                           Press any key to continue..."
WHILE INKEY$ = ""
SLEEP
WEND
mainmenu
END SUB

SUB inverse
CLS
COLOR 1
PRINT "Inverse variation menu"
PRINT " "
COLOR 2
PRINT "A=k/B"
PRINT " "
COLOR 3
PRINT "1. Solve for A"
PRINT " "
COLOR 4
PRINT "2. Solve for B"
PRINT " "
COLOR 5
PRINT "3. Quit"
PRINT " "
PRINT " "
PRINT " "
PRINT " "
PRINT " "
PRINT " "
PRINT " "
INPUT "Your selection is --> "; t%
         
  IF t% = 1 THEN
    CLS
    COLOR 9
    PRINT "A=k/B"
    PRINT " "
    COLOR 10
    INPUT "A is equal to: "; A
    INPUT "B is equal to: "; b
    INPUT "The other B is equal to: "; c
    LET k = A * b
    LET E = k / c
    PRINT "The sages has conversed and concluded that the answer is"; E
    WHILE INKEY$ = ""
    SLEEP
    WEND
    inverse
 
  ELSEIF t% = 2 THEN
    CLS
    COLOR 9
    PRINT "A=k/B"
    PRINT " "
    COLOR 10
    INPUT "A is equal to: "; A
    INPUT "B is equal to: "; b
    INPUT "The other A is equal to: "; c
    LET k = A * b
    LET E = c / k
    PRINT "The sages has conversed and concluded that the answer is"; E
    WHILE INKEY$ = ""
    SLEEP
    WEND
    inverse

  ELSEIF t% = 3 THEN
    CLS
             
  ELSE
    CLS
    WHILE INKEY$ <> CHR$(27)
    BEEP
    WEND
    inverse
  END IF

END SUB

SUB loadgfx (pic$)
DEF SEG = &HA000
BLOAD pic$, 0
DEF SEG
END SUB

SUB loadpal (pal$)
OPEN pal$ FOR INPUT AS #1
FOR x = 0 TO 255
INPUT #1, r, g, b
OUT &H3C8, x
OUT &H3C9, r
OUT &H3C9, g
OUT &H3C9, b
NEXT x
CLOSE #1
END SUB

SUB logo

          COLOR 12
          PRINT "Goodbye!?!"
          SLEEP 1
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
          flash1
END SUB

SUB mainmenu
  CLS
  COLOR 10
  PRINT "Main Menu"
  COLOR 9
  PRINT "Select your option"
  COLOR 1
  PRINT "1) Color Test"
  COLOR 2
  PRINT "2) Math Computions"
  COLOR 8
  PRINT "3) Quit Program "
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
  COLOR 6
  INPUT "Place your choice"; l%

  IF l% = 1 THEN
  CLS
 
  ELSEIF l% = 2 THEN
  CLS
  mathmenu

  ELSEIF l% = 3 THEN
  CLS
  logo

  ELSE
  CLS
  mainmenu
END IF
END SUB

SUB mathmenu
      CLS
      COLOR 7
      PRINT
      COLOR 4
      PRINT "Math Computation Menu"
      COLOR 14
      PRINT "1. Area and volume of geometric shapes"
      COLOR 13
      PRINT "2. Simple Calculator"
      COLOR 5
      PRINT "3. Area and volume of geometric shapes (upgrade)"
      COLOR 6
      PRINT "4. Direct variation"
      COLOR 7
      PRINT "5. Inverse Variation"
      COLOR 12
      PRINT "6. Algebraic Definitions"
      COLOR 11
      PRINT "7. Equation of a line"
      COLOR 8
      PRINT "8. Improved version of area and volume of geometric shapes"
      COLOR 15
      PRINT "9. Quit"
      PRINT " "
      PRINT " "
      PRINT " "
      PRINT " "
      PRINT " "
      PRINT " "
      PRINT " "
      INPUT "Select 1-9"; q%

      IF q% = 1 THEN
        mathold
      ELSEIF q% = 2 THEN
        calc.
      ELSEIF q% = 3 THEN
        mathup
      ELSEIF q% = 4 THEN
        direct
      ELSEIF q% = 5 THEN
        inverse
      ELSEIF q% = 6 THEN
        def.
      ELSEIF q% = 7 THEN
        equation
      ELSEIF q% = 8 THEN
        
      ELSEIF q% = 9 THEN
        mainmenu
      ELSEIF q% > 9 THEN
        COLOR 11
        PRINT "Invalid Selection"
        WHILE INKEY$ = ""
        SLEEP
        WEND
        mathmenu
     END IF
END SUB

SUB mathold
CLS
COLOR 4
PRINT "MATH  ver. 2.1"
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
PRINT "6. volume of rectangular cube"
PRINT "7. area of circle"
PRINT "8. area of triangle"
PRINT "9. area of rectangular plane"
PRINT "10. quit"
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
              mathold
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
              mathold
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
              mathold
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
              mathold
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
              mathold
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
              mathold
            ELSEIF choice% = 7 THEN
              CLS
              INPUT "diameter of circle"; d
              LET A = 3.14 * (.5 * d) ^ 2
              COLOR 12
              PRINT "the area of the circle is"; A
              WHILE INKEY$ = ""
              SLEEP
              WEND
              mathold
            ELSEIF choice% = 8 THEN
              CLS
              INPUT "height of triangle"; h
              INPUT "width of triangle"; w
              LET A = .5 * h * w
              COLOR 12
              PRINT "area of the triangle is"; A
              WHILE INKEY$ = ""
              SLEEP
              WEND
              mathold
            ELSEIF choice% = 9 THEN
              CLS
              INPUT "height of rectangle"; h
              INPUT "lenght of rectangle"; l
              LET A = l * h
              COLOR 12
              PRINT "the area is"; A
              WHILE INKEY$ = ""
              SLEEP
              WEND
              mathold
            ELSEIF choice% = 10 THEN
              mathmenu
            ELSE
              WHILE INKEY$ <> CHR$(13)
              PRINT "Invalid selection"
              DO
              BEEP
              LOOP UNTIL INKEY$ = CHR$(27)
              WEND
              mathold
            END IF

END SUB

SUB mathup
CLS
COLOR 4
PRINT "MATH  ver.  2.4"
COLOR 3
PRINT "  by Travis Larson"
COLOR 1
PRINT "-------------------------------------------------------------------"
PRINT ""
COLOR 5
PRINT "1. Area of a parrelogram or trapezoid"
PRINT " "
PRINT "2. Volume of a parrelogram or trapezoid"
PRINT " "
PRINT "3. Quit"
PRINT " "
PRINT " "
PRINT " "
PRINT " "
PRINT " "
PRINT " "
PRINT " "
INPUT "Your selection is -->"; s%
         
  IF s% = 1 THEN
    CLS
    COLOR 1
    INPUT "What is the length of the bottom base"; c
    INPUT "What is the length of the top base"; d
    INPUT "What is the width"; h
    LET A = 1 / 2 * (c + d) * h
    PRINT "The answer is: "; A
    WHILE INKEY$ = ""
    SLEEP
    WEND
    mathup
  ELSEIF s% = 2 THEN
    CLS
    COLOR 2
    INPUT "What is the length of the bottom base"; c
    INPUT "What is the length of the top base"; d
    INPUT "What is the width"; w
    INPUT "What is the height"; h
    LET o = 1 / 2 * (c + d) * w
    LET A = o * h
    PRINT "The answer is:"; A
    WHILE INKEY$ = ""
    SLEEP
    WEND
    mathup
  ELSEIF s% = 3 THEN
    CLS
    COLOR 7
    PRINT "Returning!"
    WHILE INKEY$ = ""
    SLEEP
    WEND
    mathmenu
  ELSE
    WHILE INKEY$ = ""
    PRINT "Invalid Selection"
    WEND
    BEEP
    mathup
  END IF

END SUB

SUB rgb (col, r, g, b)
OUT &H3C8, col    'Certain Color Number
OUT &H3C9, r    'Red Value of color
OUT &H3C9, g    'Green Value of color
OUT &H3C9, b    'Blue Value of color
END SUB

SUB sparkle
CLS
DEFINT A-Z


  
  A$ = "*    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    "
  WHILE INKEY$ <> "": WEND 'Clear keyboard buffer

  WHILE INKEY$ = ""
    FOR A = 1 TO 5
      LOCATE 1, 1                             'print horizontal sparkles
      PRINT MID$(A$, A, 80);
      LOCATE 22, 1
      PRINT MID$(A$, 6 - A, 80);

      FOR b = 2 TO 21                         'Print Vertical sparkles
        c = (A + b) MOD 5
        IF c = 1 THEN
          LOCATE b, 80
          PRINT "*";
          LOCATE 23 - b, 1
          PRINT "*";
        ELSE
          LOCATE b, 80
          PRINT " ";
          LOCATE 23 - b, 1
          PRINT " ";
        END IF
      NEXT b
    NEXT A
  WEND

END SUB


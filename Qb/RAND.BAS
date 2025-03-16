DECLARE SUB intro ()
DECLARE SUB logo ()
DECLARE SUB game ()
DECLARE SUB again ()
DECLARE SUB delay ()
DECLARE SUB flash ()
DECLARE SUB rgb (col!, r!, g!, b!)
DECLARE SUB title ()
DECLARE SUB sparkle ()
DECLARE SUB main ()
DECLARE SUB instructions ()
DECLARE SUB delay1 ()
DECLARE SUB win ()
DECLARE SUB leave ()
intro
logo
WHILE INKEY$ = ""
SLEEP
WEND
title
main

SUB again
CLS
INPUT "Play again (y/n)"; a$
IF a$ = "y" THEN
game
ELSEIF a$ = "n" THEN
leave
ELSE
again
END IF
END SUB

SUB delay
FOR b = 1 TO 50
NEXT b
END SUB

SUB delay1
FOR bb = 1 TO 90
NEXT bb
END SUB

SUB flash
rgb 0, 60, 60, 60
FOR x = 60 TO 1 STEP -1
rgb 0, x, x, x
delay
NEXT x
END SUB

SUB game
SCREEN 12
CLS
LOCATE 8, 27
COLOR 15
PRINT "Varible to match": LOCATE , 27
DRAW "c15 bu78 bl42 u25 l45 d25 r45"
RANDOMIZE TIMER
DO
x% = INT(RND * 10000) + 1
LOCATE 10, 30
COLOR 1
PRINT x%: LOCATE , 30
y% = INT(RND * 10000) + 1
LOCATE 15, 50
COLOR 14
PRINT y%: LOCATE , 50
a% = INT(RND * 10000) + 1
LOCATE 15, 20
COLOR 13
PRINT a%: LOCATE , 20
b% = INT(RND * 10000) + 1
LOCATE 15, 30
COLOR 12
PRINT b%: LOCATE , 10
c% = INT(RND * 10000) + 1
LOCATE 15, 40
COLOR 11
PRINT c%: LOCATE , 40
LOOP UNTIL INKEY$ = CHR$(13)
IF x% = y% THEN
BEEP
LOCATE 17, 30
PRINT "You have done the impossible way to go!": LOCATE , 30
win
ELSEIF x% = a% THEN
BEEP
LOCATE 17, 30
PRINT "You have done the impossible way to go!": LOCATE , 30
win
ELSEIF x% = c% THEN
BEEP
LOCATE 17, 30
PRINT "You have done the impossible way to go!": LOCATE , 30
win
ELSEIF x% = b% THEN
BEEP
LOCATE 17, 30
PRINT "You have done the impossible way to go!": LOCATE , 30
win
ELSE
LOCATE 17, 7
COLOR 3
PRINT "Too bad "; x%; " doesn't equal "; y%; " "; a%; " "; b%; " or "; c%; " try again": LOCATE , 7
FOR I% = 37 TO 1000 STEP 200
SOUND I%, I% / 1000
NEXT I%
WHILE INKEY$ = ""
SLEEP
WEND
again
END IF

END SUB

SUB instructions
CLS
COLOR 15
PRINT " "
PRINT "The object of the game is to match one of the four numbers on the bottom"
PRINT "to the top number. Sounds easy, the is a catch, each number can be a number"
PRINT "between 1 and 10,000. It is almost impossible!"
PRINT " "
PRINT " "
PRINT " "
PRINT "           Hit ENTER while the numbers are moving to stop them."
WHILE INKEY$ = ""
SLEEP
WEND
main
END SUB

SUB intro
SCREEN 13
switcher = 1
CLS
FOR time = 1 TO 4
IF time = 1 THEN
a = 316
b = 1
c = 1
d = 1
END IF
IF time = 2 THEN
a = 316
b = 196
c = 316
d = 1
END IF
IF time = 3 THEN
a = 316
b = 196
c = 1
d = 196
END IF
IF time = 4 THEN
a = 316
b = 1
c = 1
d = 196
END IF
y = 0
I = 1
FOR it = 64 TO 127 STEP .7
IF time = 1 THEN PALETTE I, 65536 * I + I
IF time = 2 THEN PALETTE I, 256 * I
IF time = 3 THEN PALETTE I, 65536 * I
IF time = 4 THEN PALETTE I, 65536 * I
IF time <> 4 THEN LINE (a, b)-(c, d), I
IF time = 4 THEN LINE (a, b)-(c, d), I, B
IF time = 4 THEN
IF switcher = 2 THEN switcher = 3: GOTO adsa
IF switcher = 2 THEN I = I + 1: switcher = 1
IF switcher = 1 THEN switcher = 8
adsa:
END IF
IF time <> 4 THEN I = I + 1
IF I = 63 THEN I = 1
low = low + 1
IF time = 1 THEN
b = b + 1
d = d + 1
END IF
IF time = 2 THEN
a = a - 1
c = c - 1
END IF
IF time = 3 THEN
b = b - 1
d = d - 1
END IF
IF time = 4 THEN
a = a - 1
b = b + 1
c = c + 1
d = d - 1
END IF
NEXT

NEXT

END SUB

SUB leave
CLS
DRAW "c8 b l210 b u150 r90 f126 e126 r90 g180 f180 l90 h126 g126 l90 e180 h180"
DRAW "c8 b ul b l1 r90 f126 e126 r90 g180 f180 l90 h126 g126 l90 e180 h180"
DRAW "c8 b ul b l1 r90 f126 e126 r90 g180 f180 l90 h126 g126 l90 e180 h180"
DRAW "c8 b ul b l1 r90 f126 e126 r90 g180 f180 l90 h126 g126 l90 e180 h180"
flash
COLOR 15
END SUB

SUB logo
CLS
SCREEN 12
LOCATE 15, 30
PRINT "Tyrant software": LOCATE , 30
PRINT "    Presents"
LOCATE 17, 32
PRINT "Impossiblity": LOCATE , 32
flash
SLEEP 1
CLS
DRAW "c8 b l60 b u30 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c8 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c8 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c8 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
flash
SLEEP 1
END SUB

SUB main
SCREEN 12
CLS
LOCATE 3, 27
PRINT "IMPOSSIBLITY": LOCATE , 27
PRINT " "
LOCATE 6, 30
PRINT "1) Play Game": LOCATE , 30
PRINT "2) Instructions"
LOCATE 8, 30
PRINT "3) Quit": LOCATE , 30
PRINT ""
LOCATE 10, 30
INPUT "√ƒƒ>"; a%: LOCATE , 30

IF a% = 1 THEN
  game
ELSEIF a% = 2 THEN
  instructions
ELSEIF a% = 3 THEN
  leave
   
END IF
END SUB

SUB rgb (col, r, g, b)
OUT &H3C8, col    'Certain Color Number
OUT &H3C9, r    'Red Value of color
OUT &H3C9, g    'Green Value of color
OUT &H3C9, b    'Blue Value of color

END SUB

DEFINT A-Z
SUB sparkle
    COLOR 4, 0
    a$ = "*    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    "
    WHILE INKEY$ <> "": WEND 'Clear keyboard buffer

    WHILE INKEY$ = ""
        FOR a = 1 TO 5
            LOCATE 1, 1                             'print horizontal sparkles
            PRINT MID$(a$, a, 80);
            LOCATE 22, 1
            PRINT MID$(a$, 6 - a, 80);

            FOR b = 2 TO 21                         'Print Vertical sparkles
                c = (a + b) MOD 5
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
        NEXT a
    WEND

END SUB

DEFSNG A-Z
SUB title
SCREEN 0
CLS
LOCATE 10, 4
COLOR 15
PRINT "ﬂﬂ€ﬂﬂ €‹   ‹€ €ﬂﬂ€ €ﬂﬂ€ €ﬂﬂﬂ €ﬂﬂﬂ ﬂﬂ€ﬂﬂ €ﬂﬂ‹ €     ﬂﬂ€ﬂﬂ ﬂﬂ€ﬂﬂ ﬂ‹   ‹ﬂ ‹€‹": LOCATE , 4
PRINT "  €   € ﬂ‹ﬂ € €  € €  € €‹‹‹ €‹‹‹   €   € ‹ﬂ €       €     €     ﬂ‹ﬂ   €€€"
LOCATE 12, 4
PRINT "  €   €  ﬂ  € €ﬂﬂﬂ €  €    €    €   €   €  € €       €     €      €    ﬂ€ﬂ": LOCATE , 4
PRINT "‹‹€‹‹ €     € €    €‹‹€ ‹‹‹€ ‹‹‹€ ‹‹€‹‹ €‹‹ﬂ €‹‹‹‹ ‹‹€‹‹   €      €     ‹ "
LOCATE 16, 30
PRINT "By:Travis Larson": LOCATE , 30
LOCATE 7, 30
PRINT "Tyrant Software": LOCATE , 30
LOCATE 18, 27
FOR x = 1 TO 30
rgb 1, 0, x, 0
delay1
NEXT x
COLOR 2
PRINT "Press any key to continue...": LOCATE , 27
x = 0
WHILE INKEY$ = ""
IF p = 0 THEN x = x + 1
IF x = 60 THEN p = 1
IF p = 1 THEN x = x - 1
IF x = 0 THEN x = x + 1: p = 0
rgb 2, x, x, x
delay
WEND
FOR y = 30 TO 0 STEP -1
rgb 1, 0, y, 0
delay
NEXT y
FOR y = x TO 0 STEP -1
rgb 2, y, y, y
delay
NEXT y
END SUB

SUB win
CLS
COLOR 15
INPUT "What is your name"; a$
CLS
LOCATE 8, 6
LPRINT a$; " has matched two or more number in IMPOSSIBILITY": LOCATE , 6
LPRINT "This occured on "; DATE$; " at "; TIME$
LOCATE 10, 4
LPRINT "ﬂﬂ€ﬂﬂ €‹   ‹€ €ﬂﬂ€ €ﬂﬂ€ €ﬂﬂﬂ €ﬂﬂﬂ ﬂﬂ€ﬂﬂ €ﬂﬂ‹ €     ﬂﬂ€ﬂﬂ ﬂﬂ€ﬂﬂ ﬂ‹   ‹ﬂ ‹€‹ ": LOCATE , 4
LPRINT "  €   € ﬂ‹ﬂ € €  € €  € €‹‹‹ €‹‹‹   €   € ‹ﬂ €       €     €     ﬂ‹ﬂ   €€€  "
LOCATE 12, 4
LPRINT "  €   €  ﬂ  € €ﬂﬂﬂ €  €    €    €   €   €  € €       €     €      €    ﬂ€ﬂ ": LOCATE , 4
LPRINT "‹‹€‹‹ €     € €    €‹‹€ ‹‹‹€ ‹‹‹€ ‹‹€‹‹ €‹‹ﬂ €‹‹‹‹ ‹‹€‹‹   €      €     ‹ "

again
END SUB


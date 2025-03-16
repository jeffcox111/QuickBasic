DECLARE SUB win ()
CLS
COLOR 9, 0
LOCATE 4, 20
PRINT "        Jump-Jet ver 1.0     DEMO"
LOCATE 6, 20
PRINT "             By  Chad Wood"
LOCATE 8, 20
COLOR 15
PRINT "     ** may be distributed freely **"
LOCATE 9, 20
INPUT "         View instuctions?(y\n) ", s$
IF s$ = "y" OR s$ = "Y" THEN GOSUB instructions:
IF s$ = "n" OR s$ = "N" THEN GOTO 0

instructions:
CLS
COLOR 10
PRINT ""
PRINT "    Jump-Jet is a very simple ''walk-around'' game.  You're Jake, an expert"
COLOR 11
PRINT
PRINT "Jet-Pak pilot.  Use the arrow keys to move across the screen.  and pick up "
COLOR 12
PRINT
PRINT "fuel pods.  Each yellow fuel pod can be up to 15 fuel points.  Try to get to"
COLOR 13
PRINT
PRINT "the red exit at the bottom right corner before you run out of fuel or hit a"
COLOR 14
PRINT
PRINT "fuel depletion pod.  You have five men to start out with.  At any time press"
COLOR 9
PRINT
PRINT "ESC to exit.  Press 1 to begin Jump-Jet..."
DO
LOOP UNTIL INKEY$ = "1"
0
GOTO 1
1
CLS
h = 1
lives = 5
fuel = 5
winner = 0
'               Rick, this is the continue point if you get a game-over

game:
CLS
x = 3
y = 2
fuel = 5
COLOR 14, 0
zark = 0
winner = 0

'               Rick, this is the location of the power capsules
LOCATE 2, 79
PRINT "þ"
LOCATE 3, 10
PRINT "þ"
LOCATE 4, 15
PRINT "þ"
LOCATE 5, 2
PRINT "þ"
LOCATE 2, 3
PRINT "þ"
LOCATE 6, 30
PRINT "þ"
LOCATE 7, 26
PRINT "þ"
LOCATE 8, 19
PRINT "þ"
LOCATE 9, 65
PRINT "þ"
LOCATE 10, 3
PRINT "þ"
LOCATE 11, 54
PRINT "þ"
LOCATE 12, 49
PRINT "þ"
LOCATE 13, 4
PRINT "þ"
LOCATE 14, 20
PRINT "þ"
LOCATE 15, 73
PRINT "þ"
LOCATE 17, 30
PRINT "þ"
LOCATE 18, 7
PRINT "þ"
LOCATE 12, 49
PRINT "þ"
LOCATE 13, 4
PRINT "þ"
LOCATE 14, 20
PRINT "þ"
LOCATE 15, 73
PRINT "þ"
LOCATE 17, 30
PRINT "þ"
'               Rick, this draws out the board

COLOR 10, 0
LOCATE 1, 1
PRINT STRING$(80, "อ")
LOCATE 2, 1
PRINT "บ"
LOCATE 3, 1
PRINT "บ"
LOCATE 4, 1
PRINT "บ"
LOCATE 5, 1
PRINT "บ"
LOCATE 6, 1
PRINT "บ"
LOCATE 7, 1
PRINT "บ"
LOCATE 8, 1
PRINT "บ"
LOCATE 9, 1
PRINT "บ"
LOCATE 10, 1
PRINT "บ"
LOCATE 11, 1
PRINT "บ"
LOCATE 12, 1
PRINT "บ"
LOCATE 13, 1
PRINT "บ"
LOCATE 14, 1
PRINT "บ"
LOCATE 15, 1
PRINT "บ"
LOCATE 16, 1
PRINT "บ"
LOCATE 17, 1
PRINT "บ"
LOCATE 18, 1
PRINT "บ"
LOCATE 19, 1
PRINT "บ"
LOCATE 20, 1
PRINT "บ"
LOCATE 21, 1
PRINT "บ"
LOCATE 22, 1
PRINT "บ"
LOCATE 23, 1
PRINT "บ"
LOCATE 1, 1
PRINT "ษ"
LOCATE 2, 80
PRINT "บ"
LOCATE 3, 80
PRINT "บ"
LOCATE 4, 80
PRINT "บ"
LOCATE 5, 80
PRINT "บ"
LOCATE 6, 80
PRINT "บ"
LOCATE 7, 80
PRINT "บ"
LOCATE 8, 80
PRINT "บ"
LOCATE 9, 80
PRINT "บ"
LOCATE 10, 80
PRINT "บ"
LOCATE 11, 80
PRINT "บ"
LOCATE 12, 80
PRINT "บ"
LOCATE 13, 80
PRINT "บ"
LOCATE 14, 80
PRINT "บ"
LOCATE 15, 80
PRINT "บ"
LOCATE 16, 80
PRINT "บ"
LOCATE 17, 80
PRINT "บ"
LOCATE 18, 80
PRINT "บ"
LOCATE 19, 80
PRINT "บ"
LOCATE 20, 80
PRINT "บ"
LOCATE 21, 80
PRINT "บ"
LOCATE 22, 80
PRINT "บ"
LOCATE 23, 80
PRINT "บ"
LOCATE 1, 80
PRINT "ป"
LOCATE 23, 80
PRINT "ผ"
LOCATE 23, 1
PRINT "ศ"
LOCATE 23, 2
PRINT STRING$(78, "อ")
COLOR 9, 0
LOCATE 10, 30
PRINT "ษออออออออป"
LOCATE 11, 30
PRINT "ศออออออออผ"
COLOR 4
LOCATE 22, 79
PRINT CHR$(21)


'               Rick, this is the arrow-key programming

DO
COLOR 4, 0
LOCATE 15, 18
PRINT CHR$(127)
LOCATE 15, 19
PRINT CHR$(127)
LOCATE 15, 20
PRINT CHR$(127)
LOCATE 15, 21
PRINT CHR$(127)
LOCATE 15, 22
PRINT CHR$(127)
LOCATE 21, 79
PRINT CHR$(127)
LOCATE 21, 78
PRINT CHR$(127)
LOCATE 21, 77
PRINT CHR$(127)
LOCATE 21, 76
PRINT CHR$(127)
LOCATE 21, 75
PRINT CHR$(127)
LOCATE 21, 74
PRINT CHR$(127)

'               Rick, this tells the computer that your dead
COLOR 9, 0
IF fuel <= 0 THEN zark = 1
IF zark = 1 THEN lives = lives - 1: CLS : PRINT "Oh no!  You ran out of gas!  You still have "; lives; " trys."; : PLAY "p1p1": CLS : GOSUB game:

COLOR 6, 0

LOCATE 1, 2
PRINT "Jump-Jet"; : LOCATE 1, 13: PRINT "Level 1": LOCATE 1, 23: PRINT "Fuel: "; fuel; "": LOCATE 1, 35: PRINT "Lives: "; lives; ""
COLOR 13, 0

LOCATE x, y
PRINT CHR$(1)

100     a$ = INKEY$: IF a$ = "" THEN GOTO 100
LOCATE x, y: PRINT " "
IF a$ = CHR$(0) + CHR$(77) THEN y = y + 1
IF a$ = CHR$(0) + CHR$(80) THEN x = x + 1
IF a$ = CHR$(0) + CHR$(75) THEN y = y - 1
IF a$ = CHR$(0) + CHR$(72) THEN x = x - 1
IF a$ = CHR$(27) THEN CLS : COLOR 15, 0: END
'               Rick, this is my EXTREMLY large error handler.
IF y = 1 THEN y = y + 1
IF y = 80 THEN y = y - 1
IF x = 1 THEN x = x + 1
IF x = 23 THEN x = x - 1
IF x = 10 AND y = 30 THEN x = x - 1
IF x = 10 AND y = 31 THEN x = x - 1
IF x = 10 AND y = 32 THEN x = x - 1
IF x = 10 AND y = 33 THEN x = x - 1
IF x = 10 AND y = 34 THEN x = x - 1
IF x = 10 AND y = 35 THEN x = x - 1
IF x = 10 AND y = 36 THEN x = x - 1
IF x = 10 AND y = 37 THEN x = x - 1
IF x = 10 AND y = 38 THEN x = x - 1
IF x = 10 AND y = 39 THEN x = x - 1
IF x = 11 AND y = 30 THEN x = x + 1
IF x = 11 AND y = 31 THEN x = x + 1
IF x = 11 AND y = 32 THEN x = x + 1
IF x = 11 AND y = 33 THEN x = x + 1
IF x = 11 AND y = 34 THEN x = x + 1
IF x = 11 AND y = 35 THEN x = x + 1
IF x = 11 AND y = 36 THEN x = x + 1
IF x = 11 AND y = 37 THEN x = x + 1
IF x = 11 AND y = 38 THEN x = x + 1
IF x = 11 AND y = 39 THEN x = x + 1
fuel = fuel - 1

'               Rick, this is the block for the fuel-pod refill

IF x = 3 AND y = 10 THEN fuel = fuel + 5
IF x = 4 AND y = 15 THEN fuel = fuel + 9
IF x = 5 AND y = 2 THEN fuel = fuel + 6
IF x = 2 AND y = 3 THEN fuel = fuel + 10
IF x = 6 AND y = 30 THEN fuel = fuel + 18
IF x = 7 AND y = 26 THEN fuel = fuel + 10
IF x = 8 AND y = 19 THEN fuel = fuel + 8
IF x = 9 AND y = 65 THEN fuel = fuel + 12
IF x = 10 AND y = 3 THEN fuel = fuel + 5
IF x = 11 AND y = 54 THEN fuel = fuel + 10
IF x = 12 AND y = 49 THEN fuel = fuel + 6
IF x = 13 AND y = 4 THEN fuel = fuel + 5
IF x = 14 AND y = 20 THEN fuel = fuel + 11
IF x = 15 AND y = 73 THEN fuel = fuel + 10
IF x = 17 AND y = 7 THEN fuel = fuel + 12
IF x = 18 AND y = 7 THEN fuel = fuel + 15
IF x = 12 AND y = 49 THEN fuel = fuel + 11
IF x = 13 AND y = 4 THEN fuel = fuel + 12
IF x = 14 AND y = 20 THEN fuel = fuel + 12
IF x = 15 AND y = 73 THEN fuel = fuel + 6
IF x = 17 AND y = 30 THEN fuel = fuel + 8
IF x = 2 AND y = 79 THEN fuel = fuel + 12

'               Rick, this is the lines of code for the gas-depletion pods

IF x = 15 AND y = 18 THEN fuel = fuel - 100
IF x = 15 AND y = 19 THEN fuel = fuel - 100
IF x = 15 AND y = 20 THEN fuel = fuel - 200
IF x = 15 AND y = 21 THEN fuel = fuel - 100
IF x = 15 AND y = 22 THEN fuel = fuel - 100
IF x = 21 AND y = 79 THEN fuel = fuel - 100
IF x = 21 AND y = 78 THEN fuel = fuel - 100
IF x = 21 AND y = 77 THEN fuel = fuel - 200
IF x = 21 AND y = 76 THEN fuel = fuel - 100
IF x = 21 AND y = 75 THEN fuel = fuel - 100
IF x = 21 AND y = 74 THEN fuel = fuel - 200
'               Rick, this line tells the computer that you have found the exit

IF x = 22 AND y = 79 THEN CALL win

'               Rick, this LOOP statement ,makes your man move

LOOP UNTIL zark = 1 OR x = 22 AND y = 79

COLOR 7, 0

IF winner = 2 THEN CLS : COLOR 15, 0: END

DEFINT A-Z
SUB SparklePause

END SUB

DEFSNG A-Z
SUB win
CLS
COLOR 15, 0
LOCATE 2, 13
PRINT "YOU WON!!!!!!!!!"

DEFINT A-Z
'SparklePause:
'  Creates flashing border for intro screen

    COLOR 9, 0
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
CLS
PLAY "p1p1"
LOCATE 3, 1
COLOR 10, 0
PRINT "Thank you for playing this program!"
PRINT "Please DO NOT register it!            (pretty cool huh!)"
PRINT "*** Instead of registering ,it pass it on to another friend. PLEASE!!! ***"
PRINT
PRINT "However, if you thought it was pretty cool and would like to order the real"
PRINT "version (10 levels!!!) then send $5.00 and your address to:"
PRINT
PRINT "                 Chad's Games"
PRINT "                 P.O. Box 91026"
PRINT "                 Lakeland, FL 33804"
PRINT
PRINT "I'm only 12 and am saving for a computer (I programmed this on my dad's) so"
PRINT "it would help if you bought the real version."
PRINT
PRINT "                                       dedicated programmer,"
PRINT "                                                         Chad Wood"
PRINT
PRINT "{press 1 when done}"
DO
LOOP UNTIL INKEY$ = "1"
CLS
COLOR 15, 0
END
END SUB


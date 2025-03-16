DEFINT A-Z
DECLARE SUB decode1 ()
DECLARE SUB decode2 ()
DIM SHARED start%
'$INCLUDE: 'button.bi'

RANDOMIZE TIMER

SCREEN 12
init "", 1  'Initialize everything. Background is 20 red,20 green and 20 blue.
key$ = moused$(2, 0, 0, 0)
'pause 36 'Wait 36 ticks (about 2 seconds)
			'1 tick is 1/18.2 of a second.
CLS
LINE (0, 0)-(640, 480), 14, BF
box 10, 15, 340, 340
LINE (21, 26)-(340, 345), 0, BF
box 420, 20, 180, 180
box 10, 355, 340, 100
LINE (21, 366)-(340, 445), 0, BF
button 450, 40, 0, 0, "DECODE", 1
button 450, 70, 0, 0, "SPIKE", 2
'button 450, 100, 0, 0, "SWEEPER", 3
button 450, 100, 0, 0, "DROP CARRIER", 4
decode1
xxx = 24
COLOR 14
LOCATE 5, 7
PRINT "USER login"
LOCATE 7, 7
PRINT "ENTER PASSWORD: _"
LOCATE 24, 20
PRINT "STATUS:"
LOCATE 25, 7
PRINT "ON-LINE"
DO                                         'Main loop.
       
	key$ = moused(3, bx, x, y)          'Get cursor info, bx=button status
														'x,y=(x,y) of mouse

       
	IF LEN(key$) = 1 THEN editchange key$  'and put into edit box.

	IF INKEY$ <> "" THEN
	BEEP
	LOCATE 7, 23
	PRINT INKEY$
	END IF
	IF bx = 0 AND bd = 1 THEN bd = 0  'Make sure the button doesn't flip states.
	IF (bx AND 1) AND (bd = 0) THEN
		bd = 1
		id = findAnimate(x, y)   'See if a button was pressed
		k = animate(id)'and if one was animate it.
	IF k THEN
			SELECT CASE id               'Actions for buttons
				CASE 1: decode1
															'Move text from edit box to text field
			END SELECT
		END IF
	END IF
LOOP

key$ = moused$(2, 0, 0, 0)

SUB decode1
RANDOMIZE TIMER
first% = INT(RND * 26) + 65
second% = INT(RND * 26) + 65
third% = INT(RND * 26) + 65
fourth% = INT(RND * 26) + 65
fifth% = INT(RND * 26) + 65
sixth% = INT(RND * 26) + 65
seventh% = INT(RND * 26) + 65
LOCATE 25, 21
PRINT "DECODING"
GOTO first
first:
DO
RANDOMIZE TIMER
a% = INT(RND * 26) + 65
IF a% = first% THEN GOTO second
LOCATE 7, 23
PRINT CHR$(a%) + "_"
FOR x = 1 TO 10650: NEXT x
LOOP

second:
LOCATE 7, 23
PRINT CHR$(a%) + "_"
BEEP
DO
RANDOMIZE TIMER
B% = INT(RND * 26) + 65
IF B% = second% THEN GOTO third
LOCATE 7, 24
PRINT CHR$(B%) + "_"
FOR x = 1 TO 16500: NEXT x
LOOP

third:
LOCATE 7, 24
PRINT CHR$(B%) + "_"
BEEP
DO
RANDOMIZE TIMER
C% = INT(RND * 26) + 65
IF C% = third% THEN GOTO fourth
LOCATE 7, 25
PRINT CHR$(C%) + "_"
FOR x = 1 TO 16500: NEXT x
LOOP

fourth:
LOCATE 7, 25
PRINT CHR$(C%) + "_"
BEEP
DO
RANDOMIZE TIMER
d% = INT(RND * 26) + 65
IF d% = fourth% THEN GOTO fifth
LOCATE 7, 26
PRINT CHR$(d%) + "_"
FOR x = 1 TO 16500: NEXT x
LOOP

fifth:
LOCATE 7, 26
PRINT CHR$(d%) + "_"
BEEP
DO
RANDOMIZE TIMER
E% = INT(RND * 26) + 65
IF E% = fifth% THEN GOTO sixth
LOCATE 7, 27
PRINT CHR$(E%) + "_"
FOR x = 1 TO 16500: NEXT x
LOOP

sixth:
LOCATE 7, 27
PRINT CHR$(E%) + "_"
BEEP
DO
RANDOMIZE TIMER
f% = INT(RND * 26) + 65
IF f% = sixth% THEN GOTO seventh
LOCATE 7, 28
PRINT CHR$(f%) + "_"
FOR x = 1 TO 16500: NEXT x
LOOP

seventh:
LOCATE 7, 28
PRINT CHR$(f%) + "_"
BEEP
DO
RANDOMIZE TIMER
g% = INT(RND * 26) + 65
IF g% = seventh% THEN GOTO finished
LOCATE 7, 29
PRINT CHR$(g%) + "_"
FOR x = 1 TO 16500: NEXT x
LOOP

finished:
LOCATE 7, 29
PRINT CHR$(g%) + "_"
BEEP
LOCATE 25, 20
PRINT "          "
LOCATE 9, 7
PRINT "WELCOME  You have login on to the"
LOCATE 11, 7
PRINT "US Department of Defense mainframe"
'WHILE INKEY$ = ""
LOCATE 13, 7
PRINT "PREES ENTER CONTINUE"

DO                                         'Main loop.
     
	key$ = moused(3, bx, x, y)          'Get cursor info, bx=button status
														'x,y=(x,y) of mouse

     
	IF LEN(key$) = 1 THEN editchange key$  'and put into edit box.
	'IF INKEY$ <> "" THEN LINE (21, 26)-(340, 345), 0, BF
	IF INKEY$ = CHR$(13) THEN LINE (21, 26)-(340, 345), 0, BF: GOTO tmer
	IF bx = 0 AND bd = 1 THEN bd = 0  'Make sure the button doesn't flip states.
	IF (bx AND 1) AND (bd = 0) THEN
		bd = 1
		id = findAnimate(x, y)   'See if a button was pressed
		k = animate(id)'and if one was animate it.
	IF k THEN
			SELECT CASE id               'Actions for buttons
				'CASE 2: GOTO spike
															'Move text from edit box to text field
			END SELECT
		END IF
	END IF
LOOP

key$ = moused$(2, 0, 0, 0)

tmer:
TIMER ON
start = TIMER
decode2

END SUB

SUB decode2
nowtime = TIMER - start
LOCATE 19, 7
PRINT mowtime%
LOCATE 9, 7
PRINT "U.S. Department Of Defense Menu"
LOCATE 9, 25
PRINT "ID: 225"
LOCATE 11, 7
PRINT "1. Restricted Area Authorized Personal ONLY"
LOCATE 13, 7
PRINT "2. E-Mail"
LOCATE 15, 7
PRINT "3. Log In/Out"
LOCATE 17, 7
PRINT "4. Log Off"
END SUB


DEFINT A-Z
DECLARE SUB decode1 ()
DECLARE SUB decode2 ()
DECLARE SUB ath ()
DECLARE SUB chanpass ()
DECLARE SUB drop ()
DIM SHARED spike
DIM SHARED first%
DIM SHARED second%
DIM SHARED third%
DIM SHARED fourth%
DIM SHARED fifth%
DIM SHARED sixth%
DIM SHARED seventh%

'$INCLUDE: 'button.bi'
spike = 0
RANDOMIZE TIMER

0 SCREEN 12
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
button 450, 100, 0, 0, "DROP CARRIER", 4
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
1
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
				CASE 2: GOTO spike1
				CASE 4: drop
			END SELECT
		END IF
	END IF
LOOP

key$ = moused$(2, 0, 0, 0)

spike1:
LOCATE 25, 21
PRINT "SENDING SPIKE..."
s = 0
DO
key$ = moused(3, bx, x, y)
s = s + 1                                                                                                               'x,y=(x,y) of mouse
LOOP UNTIL s = 4000
LOCATE 25, 21
PRINT "                 "
spike = 1
GOTO 1

SUB ath
LINE (21, 26)-(340, 345), 0, BF
LOCATE 6, 7
PRINT "1. Launch Nuclear Weaponary"
LOCATE 8, 7
PRINT "2. Change DEFCON level"
LOCATE 10, 7
PRINT "3. E-Mail President"
LOCATE 12, 7
PRINT "4. Change Password"
tt$ = "": WHILE VAL(tt$) < 1 OR VAL(tt$) > 5
tt$ = INKEY$
key$ = moused(3, bx, x, y)
  IF tt$ = "4" THEN
    chanpass
  END IF
WEND
END SUB

SUB chanpass
LINE (21, 26)-(340, 345), 0, BF
LOCATE 7, 7
PRINT "Enter Old Password: "
DO                                         'Main loop.
      
	key$ = moused(3, bx, x, y)          'Get cursor info, bx=button status
														'x,y=(x,y) of mouse

      
	IF LEN(key$) = 1 THEN editchange key$  'and put into edit box.

	IF bx = 0 AND bd = 1 THEN bd = 0  'Make sure the button doesn't flip states.
	IF (bx AND 1) AND (bd = 0) THEN
		bd = 1
		id = findAnimate(x, y)   'See if a button was pressed
		k = animate(id)'and if one was animate it.
	IF k THEN
			SELECT CASE id               'Actions for buttons
				CASE 1: GOTO 121
				'CASE 2: GOTO spike1                                                                                        'Move text from edit box to text fieEND SELECT
		END SELECT
		END IF
	END IF
LOOP

key$ = moused$(2, 0, 0, 0)

121
LOCATE 25, 21
PRINT "DECODING..."
GOTO first2
first2:
DO
RANDOMIZE TIMER
a% = INT(RND * 26) + 65
IF a% = first% THEN GOTO second2
LOCATE 7, 27
PRINT CHR$(a%) + "_"
FOR x = 1 TO 10650: NEXT x
LOOP

second2:
LOCATE 7, 27
PRINT CHR$(a%) + "_"
BEEP
DO
RANDOMIZE TIMER
b% = INT(RND * 26) + 65
IF b% = second% THEN GOTO third2
LOCATE 7, 28
PRINT CHR$(b%) + "_"
FOR x = 1 TO 16500: NEXT x
LOOP

third2:
LOCATE 7, 28
PRINT CHR$(b%) + "_"
BEEP
DO
RANDOMIZE TIMER
C% = INT(RND * 26) + 65
IF C% = third% THEN GOTO fourth2
LOCATE 7, 29
PRINT CHR$(C%) + "_"
FOR x = 1 TO 16500: NEXT x
LOOP

fourth2:
LOCATE 7, 29
PRINT CHR$(C%) + "_"
BEEP
DO
RANDOMIZE TIMER
d% = INT(RND * 26) + 65
IF d% = fourth% THEN GOTO fifth2
LOCATE 7, 30
PRINT CHR$(d%) + "_"
FOR x = 1 TO 16500: NEXT x
LOOP

fifth2:
LOCATE 7, 30
PRINT CHR$(d%) + "_"
BEEP
DO
RANDOMIZE TIMER
E% = INT(RND * 26) + 65
IF E% = fifth% THEN GOTO sixth2
LOCATE 7, 31
PRINT CHR$(E%) + "_"
FOR x = 1 TO 16500: NEXT x
LOOP

sixth2:
LOCATE 7, 31
PRINT CHR$(E%) + "_"
BEEP
DO
RANDOMIZE TIMER
f% = INT(RND * 26) + 65
IF f% = sixth% THEN GOTO seventh2
LOCATE 7, 32
PRINT CHR$(f%) + "_"
FOR x = 1 TO 16500: NEXT x
LOOP

seventh2:
LOCATE 7, 32
PRINT CHR$(f%) + "_"
BEEP
DO
RANDOMIZE TIMER
g% = INT(RND * 26) + 65
IF g% = seventh% THEN GOTO finished2
LOCATE 7, 33
PRINT CHR$(g%) + "_"
FOR x = 1 TO 16500: NEXT x
LOOP

finished2:
LOCATE 7, 33
PRINT CHR$(g%) + "_"
BEEP
LOCATE 25, 20
PRINT "              "

LOCATE 9, 7
INPUT "Enter new password: ", newpass$
ath
END SUB

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
PRINT "DECODING..."
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
b% = INT(RND * 26) + 65
IF b% = second% THEN GOTO third
LOCATE 7, 24
PRINT CHR$(b%) + "_"
FOR x = 1 TO 16500: NEXT x
LOOP

third:
LOCATE 7, 24
PRINT CHR$(b%) + "_"
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
PRINT "              "
LOCATE 9, 7
PRINT "WELCOME  You have login on to the"
LOCATE 11, 7
PRINT "US Department of Defense mainframe"
'WHILE INKEY$ = ""
LOCATE 13, 7
PRINT "PRESS ENTER CONTINUE"
DO
	key$ = moused(3, bx, x, y)
LOOP UNTIL INKEY$ <> ""

'key$ = moused$(2, 0, 0, 0)
decode2

END SUB

SUB decode2
LINE (21, 26)-(340, 345), 0, BF
LOCATE 6, 7
PRINT "U.S. Department Of Defense Menu"
LOCATE 7, 7
PRINT "ID: 225"
LOCATE 9, 7
PRINT "1. Restricted Area Authorized "
LOCATE 10, 7
PRINT "   Personal ONLY"
LOCATE 12, 7
PRINT "2. E-Mail"
LOCATE 14, 7
PRINT "3. Log In/Out"
LOCATE 16, 7
PRINT "4. Log Off"
b$ = "": WHILE VAL(b$) < 1 OR VAL(b$) > 4
b$ = INKEY$
key$ = moused(3, bx, x, y)
IF b$ = "1" THEN
  IF spike = 0 THEN
    LOCATE 25, 21
    PRINT "NO SPIKE SENT"
    LOCATE 26, 7
    PRINT "CALL IS BEING TRACED TERMINATE CALL,"
    LOCATE 27, 7
    PRINT "LEAVE, POLICE WILL ARRIVE SOON"
    END
  ELSE
    ath
  END IF
'ELSEIF b$ = "2" THEN
'  IF spike = 0 THEN
'    LOCATE 25, 21
'    PRINT "NO SPIKE SENT"
 ''   LOCATE 26, 7
 '   PRINT "CALL IS BEING TRACED TERMINATE CALL,"
 '   LOCATE 27, 7
 '   PRINT "LEAVE, POLICE WILL ARRIVE SOON"
 '   END
'  ELSE
'    chanpass
'  END IF
END IF
WEND


END SUB

SUB drop
LOCATE 25, 21
PRINT "DROPPING CARRIER..."
sde = 0
DO
sde = sde + 1
key$ = moused(3, bx, x, y)
LOOP UNTIL sde = 4000
LOCATE 25, 21
PRINT "                   "
END
END SUB


67
CLS
SCREEN 12
DO
LINE (50, 50)-(150, 150), 15, B
LOCATE 1, 1
PRINT "Move Joystick Upper Left & Push Button A"
' This gets the coordinates from the joystick and stores it in variables
jyu = STICK(0)          ' Stores Y coordinate (up)
jxl = STICK(1)          ' Stores X coordinate (left)
PRINT jyu
PRINT jxl
PSET (jyu + 50, jxl + 50)
LOOP UNTIL STRIG(1) = -1        ' LOOPS until the Button A "STRIG(1)" is pressed
CLS
LINE (50, 50)-(150, 150), 15, B
DO
LOCATE 1, 1
PRINT "Move joystick to lower right & Push Button B"
jyd = STICK(0)          ' Stores Y coordinate (down)
jxr = STICK(1)          ' Stores X coordinate (right)
PRINT jyd
PRINT jxr
PSET (jxr + 50, jyd + 50)
LOOP UNTIL STRIG(5) = -1        ' LOOP until Button B "STRIG(5)" is pressed
l% = 2
89
IF l% = 0 THEN : END
SCREEN 9
COLOR 1, 7
x = 120
y = 100
p% = 1
CLS
77
CIRCLE (600, 170), 20, 15
DO
LOCATE 1, 50
PRINT "Torpedos "; p%; " Lives "; l%
LINE (x, y + 90)-(x - 150, y - 90), 7, BF
x = x + 4
LINE (x, y)-(x - 25, y - 5), 8
LINE (x, y)-(x - 25, y + 5), 8
LINE (x - 25, y - 5)-(x - 90, y - 5), 8
LINE (x - 25, y + 5)-(x - 90, y + 5), 8
LINE (x - 90, y - 5)-(x - 45, y - 30), 8
LINE (x - 90, y + 5)-(x - 45, y + 30), 8
LINE (x - 15, y - 30)-(x - 65, y - 30), 8
LINE (x - 15, y + 30)-(x - 65, y + 30), 8
LINE (x - 55, y - 30)-(x - 100, y - 5), 8
LINE (x - 55, y + 30)-(x - 100, y + 5), 8
LINE (x - 100, y - 5)-(x - 100, y + 5), 8
LINE (x - 14, y + 2)-(x - 100, y + 2), 8
LINE (x - 14, y - 2)-(x - 100, y - 2), 8
LINE (x - 95, y - 8)-(x - 85, y - 8), 8
LINE (x - 95, y + 8)-(x - 85, y + 8), 8
LINE (x - 80, y - 16)-(x - 70, y - 16), 8
LINE (x - 80, y + 16)-(x - 70, y + 16), 8
LINE (x - 101, y + 3)-(x - 120, y), 12
LINE (x - 101, y - 3)-(x - 120, y), 12
LINE (x - 101, y - 3)-(x - 101, y + 3), 12
PAINT (x - 102, y), 12, 12
PAINT (x - 90, y + 3), 7, 7
'IF STICK(0) = jyd THEN x = x + 150 ' 10 can be changed for slower or faster movement
'IF STICK(0) = jyu THEN x = x - 150 ' See above line
IF STICK(1) = jxl THEN y = y - 10 ' See above line
IF STICK(1) = jxr THEN y = y + 10 ' See above line
IF INKEY$ = CHR$(27) THEN GOTO 867
IF STRIG(1) = -1 AND p% > 0 THEN GOTO 9000
IF STRIG(5) = -1 THEN END
IF x > 740 THEN PRINT "You Died": l% = l% - 1: GOTO 89
IF y < -10 THEN PRINT "You Died": l% = l% - 1: GOTO 89
IF y > 490 THEN PRINT "You Died": l% = l% - 1: GOTO 89
KEY(1) ON
ON KEY(1) GOSUB 12
LOOP

9000 :
p% = p% - 1
LOCATE 1, 50
PRINT "Torpedos "; p%; " Lives "; l%
r = x
t = y
DO
LINE (r, t)-(r + 3, t), 0
r = r + 10
LINE (r, t)-(r + 3, t), 15
FOR d = 1 TO 100: NEXT d
IF r < 605 AND y < 190 AND r > 599 AND y > 150 THEN
'PRINT "you won"
END
ELSEIF r > 640 THEN
GOTO 77
END IF
LOCATE 1, 50
PRINT "Torpedos "; p%; " Lives "; l%
LINE (x, y + 90)-(x - 150, y - 90), 7, BF
x = x + 4
LINE (x, y)-(x - 25, y - 5), 8
LINE (x, y)-(x - 25, y + 5), 8
LINE (x - 25, y - 5)-(x - 90, y - 5), 8
LINE (x - 25, y + 5)-(x - 90, y + 5), 8
LINE (x - 90, y - 5)-(x - 45, y - 30), 8
LINE (x - 90, y + 5)-(x - 45, y + 30), 8
LINE (x - 15, y - 30)-(x - 65, y - 30), 8
LINE (x - 15, y + 30)-(x - 65, y + 30), 8
LINE (x - 55, y - 30)-(x - 100, y - 5), 8
LINE (x - 55, y + 30)-(x - 100, y + 5), 8
LINE (x - 100, y - 5)-(x - 100, y + 5), 8
LINE (x - 101, y + 3)-(x - 120, y), 12
LINE (x - 14, y + 2)-(x - 100, y + 2), 8
LINE (x - 14, y - 2)-(x - 100, y - 2), 8
LINE (x - 95, y - 8)-(x - 85, y - 8), 8
LINE (x - 95, y + 8)-(x - 85, y + 8), 8
LINE (x - 80, y - 16)-(x - 70, y - 16), 8
LINE (x - 80, y + 16)-(x - 70, y + 16), 8
LINE (x - 101, y - 3)-(x - 120, y), 12
LINE (x - 101, y - 3)-(x - 101, y + 3), 12
PAINT (x - 102, y), 12, 12
PAINT (x - 90, y + 3), 7, 7
'IF STICK(0) = jyd THEN x = x + 150 ' 10 can be changed for slower or faster movement
'IF STICK(0) = jyu THEN x = x - 150 ' See above line
IF STICK(1) = jxl THEN y = y - 10  ' See above line
IF STICK(1) = jxr THEN y = y + 10  ' See above line
IF INKEY$ = CHR$(27) THEN GOTO 867
IF STRIG(1) = -1 AND p% > 0 THEN GOTO 9000
IF STRIG(5) = -1 THEN END
IF x > 740 THEN PRINT "You Died": GOTO 89
IF y < -10 THEN PRINT "You Died": GOTO 89
IF y > 490 THEN PRINT "You Died": GOTO 89
LOOP UNTIL r = 640
GOTO 77

867 :
p% = p% + 1
GOTO 77

12
l% = l% + 1
BEEP
GOTO 77


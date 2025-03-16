' Jesse Legg
' Gambier, OH
' Screen Name: HacksterJ
' Joystick Calibration and usage program
' Could be used in a game....
' HOPEFULLY!
'
' Somebody upload some cool BASIC games with at least one thing like
' Sound Card(can be done in QBASIC), Mouse/Joystick, or Graphics
' No more TEXT/ASCII crap! I've written parts of games in QBASIC with GUI
' and Sound Blaster support but have never finished(too busy!)
1 CLS
SCREEN 12
DO
LOCATE 1, 1
PRINT "Move Joystick Upper Left & Push Button A"
' This gets the coordinates from the joystick and stores it in variables
jyu = STICK(0)          ' Stores Y coordinate (up)
jxl = STICK(1)          ' Stores X coordinate (left)
LOOP UNTIL STRIG(1) = -1        ' LOOPS until the Button A "STRIG(1)" is pressed
CLS
DO
LOCATE 1, 1
PRINT "Move joystick to lower right & Push Button B"
jyd = STICK(0)          ' Stores Y coordinate (down)
jxr = STICK(1)          ' Stores X coordinate (right)
LOOP UNTIL STRIG(5) = -1        ' LOOP until Button B "STRIG(5)" is pressed
CLS
x = 200: y = 200
a = x: b = y
DO
CIRCLE (a, b), 5, 0   ' Can be changed for a different cursor, target, whatever
CIRCLE (x, y), 5
a = x: b = y
IF STICK(0) = jyd THEN x = x + 10  ' 10 can be changed for slower or faster movement
IF STICK(0) = jyu THEN x = x - 10  ' See above line
IF STICK(1) = jxl THEN y = y - 10  ' See above line
IF STICK(1) = jxr THEN y = y + 10  ' See above line
IF INKEY$ = CHR$(27) THEN : GOTO 1
LOOP


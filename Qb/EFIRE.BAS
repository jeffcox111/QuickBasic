DECLARE SUB orig (a!, B!, c!)
DECLARE SUB melt (times!, x1!, x2!)
DECLARE SUB delay ()
DECLARE SUB rgb (col!, r!, g!, B!)
DIM SHARED plt(100, 3)
DIM startbuffer(320, 1)
DIM screenbuffer(320, 2)
CLS
SCREEN 13
FOR x = 1 TO 50
plt(x, 1) = 0
plt(x, 2) = 0
plt(x, 3) = x / 1.5
NEXT x
FOR x = 51 TO 100
plt(x, 1) = x / 1.1 - 30
plt(x, 2) = 0
plt(x, 3) = x / 1.5
NEXT x
orig 0, 0, 0
RANDOMIZE TIMER
FOR y = 1 TO 320
x = INT(RND * 100) + 1
startbuffer(y, 1) = x
screenbuffer(y, 2) = x
NEXT y
FOR y = 200 TO 1 STEP -1
FOR x = 2 TO 319
screenbuffer(x, 1) = (screenbuffer(x - 1, 2) + screenbuffer(x, 2) + screenbuffer(x + 1, 2)) / 3.001
PSET (x, y), screenbuffer(x, 1)
SWAP screenbuffer(x, 1), screenbuffer(x, 2)
NEXT x
wierd = INT(RND * 310) + 2
IF y / 10 = INT(y / 10) THEN screenbuffer(wierd, 2) = 100
NEXT y
WHILE INKEY$ <> CHR$(27)
WEND

SUB delay
FOR y = 1 TO 2000
NEXT y
END SUB

SUB flash
FOR x = 60 TO 0 STEP -1
rgb 0, x, x, x
delay
NEXT x
END SUB

SUB melt (times, x1, x2)

END SUB

SUB orig (a, B, c)
IF a = 0 THEN a = 1
IF B = 0 THEN B = 1
IF c = 0 THEN c = 1
FOR x = 1 TO 100
rgb x, plt(x, 1) / a, plt(x, 2) / B, plt(x, 3) / c
NEXT x
END SUB

SUB rgb (col, r, g, B)
OUT &H3C8, col    'Certain Color Number
OUT &H3C9, r    'Red Value of color
OUT &H3C9, g    'Green Value of color
OUT &H3C9, B    'Blue Value of color
END SUB


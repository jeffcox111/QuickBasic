DECLARE SUB smear ()
DECLARE SUB rainbow ()
DECLARE SUB load (a$)
DECLARE SUB melt (times!, x1!, x2!)
DECLARE SUB flash ()
DECLARE SUB drawlines ()
DECLARE SUB cycle (times, start)
DECLARE SUB delay ()
DECLARE SUB rgb (col!, r!, g!, b!)
DIM SHARED cube1(1 TO 1700)
DIM SHARED cube2(1 TO 1700)
DIM SHARED lim
DIM SHARED ln(200)
DIM SHARED H(330)
DIM SHARED pointx(100)
DIM SHARED pointy(100)
SCREEN 13
LINE (0, 0)-(241, 11), 255, B
rainbow
FOR x = 1 TO 30
rgb x, x * 2, x * 2, 60
NEXT x
rgb 255, 60, 60, 60
rgb 0, 0, 0, 60
RANDOMIZE TIMER
        a = INT(RND * 200) + 1
        b = INT(RND * 180) + 20
r = 1

FOR x = 1 TO 10000 STEP 0
        dir = INT(RND * 4) + 1
        IF dir = 1 AND a > 0 THEN a = a - r
        IF dir = 2 AND a < 300 THEN a = a + r
        IF dir = 3 AND b > 30 THEN b = b - r
        IF dir = 4 AND b < 200 THEN b = b + r
        c = 30
        c = (POINT(a, b - r) + POINT(a, b + r) + POINT(a - r, b) + POINT(a + r, b) + POINT(a + 1, b + 1) + POINT(a + 1, b - 1) + POINT(a - 1, b + 1) + POINT(a - 1, b - 1) + c) / 9
        PSET (a, b), c
        'CIRCLE (a, b), r, c
        'LINE (a - r / 2, b - r / 2)-(a + r / 2, b + r / 2), c, BF
        IF INKEY$ = CHR$(27) THEN smear
NEXT x

SUB cycle (times, start)
FOR z = 1 TO times
FOR x = 1 TO 60
FOR c = 1 TO 60
rgb c + start, 0, x, x
delay
NEXT c
NEXT x
NEXT z

END SUB

SUB delay
FOR y = 1 TO 2000
NEXT y
END SUB

SUB drawcircles
FOR y = 1 TO 10
FOR x = 1 TO 60
rad = INT(RND * 30) + 1
xx = INT(RND * 320) + 1
yy = INT(RND * 200) + 1
CIRCLE (xx, yy), rad, x
PAINT (xx, yy), x
NEXT x
NEXT y

END SUB

SUB drawlines
RANDOMIZE TIMER
PSET (1, 1)
FOR x = 1 TO 180
DRAW "c" + STR$(INT(x \ 3)) + "r320d1l320"
NEXT x
FOR x = 60 TO 1 STEP -1
NEXT x
END SUB

SUB flash

FOR x = 60 TO 0 STEP -1
FOR c = 60 TO 0 STEP -1
rgb c, x, x, x
NEXT c
delay
NEXT x


END SUB

SUB load (a$)
OPEN a$ FOR BINARY AS #1
FOR x = 1 TO 1700
GET #1, , cube1(x)
NEXT x
CLOSE #1
END SUB

SUB melt (times, x1, x2)
FOR z = 1 TO times
FOR x = x1 TO x2
y = INT(RND * 20) + 1
GET (x, 1)-(x, 180), cube2
LINE (x, 0)-(x, 200), 0
PUT (x, y), cube2, PSET
NEXT x
NEXT z

END SUB

SUB rainbow
FOR x = 0 TO 60
rgb x, x, 0, 0
NEXT x
FOR x = 1 TO 60
rgb x + 60, 60 - x, x, 0
NEXT x
FOR x = 1 TO 60
rgb x + 120, 0, 60 - x, x
NEXT x
FOR x = 1 TO 59
rgb x + 180, x - 60, 0, 60
NEXT x
FOR x = 1 TO 15
rgb x + 240, 0, 0, 0
NEXT x

FOR x = 1 TO 240
LINE (x, 1)-(x, 10), x
NEXT x

END SUB

SUB rgb (col, r, g, b)
OUT &H3C8, col    'Certain Color Number

OUT &H3C9, r    'Red Value of color
OUT &H3C9, g    'Green Value of color
OUT &H3C9, b    'Blue Value of color
END SUB

SUB save (a$)
OPEN a$ FOR BINARY AS #1
FOR x = 1 TO 1700
PUT #1, , cube1(x)
NEXT x
CLOSE #1
END SUB

SUB smear
        FOR y = 190 TO 30 STEP -1
        FOR x = 2 TO 320
        col = (POINT(x - 1, y) + POINT(x + 1, y) + POINT(x - 1, y - 1) + POINT(x + 1, y - 1) + POINT(x - 1, y + 1) + POINT(x + 1, y + 1) + POINT(x, y - 1) + POINT(x, y + 1)) / 8
        PSET (x, y), col
        NEXT x
        NEXT y

END SUB


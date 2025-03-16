DECLARE SUB rainbow ()
DECLARE SUB rgb (col!, r!, g!, b!)

CLS
SCREEN 13
LINE (0, 0)-(241, 11), 255, B
rainbow
FOR x = 1 TO 30
rgb x, x * 2, x * 2, 60
NEXT x
rgb 255, 60, 60, 60
RANDOMIZE TIMER
        a = INT(RND * 200) + 1
        b = INT(RND * 180) + 20
r = 1
c = 30
'CIRCLE (a, b), c, r
        c = (POINT(a, b - r) + POINT(a, b + r) + POINT(a - r, b) + POINT(a + r, b) + POINT(a + 1, b + 1) + POINT(a + 1, b - 1) + POINT(a - 1, b + 1) + POINT(a - 1, b - 1) + c) / 9
        PSET (a, b), c
        'CIRCLE (a, b), r, c
        'LINE (a - r / 2, b - r / 2)-(a + r / 2, b + r / 2), c, BF

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


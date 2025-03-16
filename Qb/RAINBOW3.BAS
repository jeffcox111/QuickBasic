DECLARE SUB rainbow ()
DECLARE SUB rgb (col!, r!, g!, b!)
DECLARE SUB delay ()
CLS
SCREEN 13
rainbow

SUB delay
FOR b = 1 TO 85
NEXT b
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
delay
NEXT x

FOR x = 1 TO 240
LINE (x, 1)-(x, 10), x
delay
NEXT x


FOR x = 1 TO 240
LINE (10, x)-(x, 10), x
delay
NEXT x

END SUB

SUB rgb (col, r, g, b)
OUT &H3C8, col    'Certain Color Number
OUT &H3C9, r    'Red Value of color
OUT &H3C9, g    'Green Value of color
OUT &H3C9, b    'Blue Value of color


END SUB


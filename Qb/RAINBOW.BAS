DECLARE SUB rainbow ()
DECLARE SUB rgb ()
rainbow

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


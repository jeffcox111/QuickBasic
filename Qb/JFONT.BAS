DECLARE SUB fprint (text$, x!, y!, fcolor!, sx!, sy!)
'DECLARE SUB fprint (text$, x, y, fcolor, sx, sy)
'fprint sub by Justin Miller
'text$ is a-z, 0-9, and .
'x and y is the lower left hand corner
'fcolor is the color of the text
'sx is how wide a letter is, sy is how tall a letter is, if sx =1 and sy = 1
'then the letters are 8 pixels wide and 9 pixels high, if sx = 2 and sy = 2
'then the letters are 16 pixels wide and 18 pixels high, ect.....
SCREEN 12
FOR x = 10 TO 1 STEP -.1
fprint "Tyrant", 20, 150, 9, x, x
NEXT x
fprint "Software", 20, 300, 9, 7, 7
FOR x = 1 TO 10 STEP .1
fprint "Tyrant", 20, 150, 0, x, x
NEXT x
CLS
fprint "Tyrant", 20, 150, 9, x, x
fprint "Software", 20, 300, 9, 7, 7

SUB fprint (text$, x, y, fcolor, sx, sy)
a = LEN(text$)
FOR i = 1 TO a
SELECT CASE LCASE$(MID$(text$, i, 1))
 CASE "a"
 LINE (x, y)-(x, y - 5 * sy), fcolor
 LINE -(x + 4 * sx, y - 8 * sy), fcolor
 LINE -(x + 5 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 5 * sy), fcolor
 LINE -(x + 7 * sx, y), fcolor
 LINE (x, y - 4 * sy)-(x + 7 * sx, y - 4 * sy), fcolor
 x = x + 10 * sx
 CASE "b"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 LINE -(x + 8 * sx, y - 8 * sy), fcolor
 LINE -(x + 8 * sx, y - 5 * sy), fcolor
 LINE -(x + 7 * sx, y - 4 * sy), fcolor
 LINE -(x, y - 4 * sy), fcolor
 LINE (x + 8 * sx, y - 3 * sy)-(x + 8 * sx, y - 1 * sy), fcolor
 LINE -(x + 7 * sx, y), fcolor
 LINE -(x, y), fcolor
 LINE (x + 7 * sx, y - 4 * sy)-(x + 8 * sx, y - 3 * sy), fcolor
 x = x + 10 * sx
 CASE "c"
 LINE (x, y - 1 * sy)-(x, y - 7 * sy), fcolor
 LINE -(x + 1 * sx, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 7 * sy), fcolor
 LINE (x, y - 1 * sy)-(x + 1 * sx, y), fcolor
 LINE -(x + 6 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 1 * sy), fcolor
 x = x + 10 * sx
 CASE "d"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 7 * sy), fcolor
 LINE -(x + 7 * sx, y - 1 * sy), fcolor
 LINE -(x + 6 * sx, y), fcolor
 LINE -(x, y), fcolor
 x = x + 10 * sx
 CASE "e"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 LINE (x, y)-(x + 7 * sx, y), fcolor
 LINE (x, y - 4 * sy)-(x + 4 * sx, y - 4 * sy), fcolor
 x = x + 10 * sx
 CASE "f"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 LINE (x, y - 4 * sy)-(x + 4 * sx, y - 4 * sy), fcolor
 x = x + 10 * sx
 CASE "g"
 LINE (x + 5 * sx, y - 3 * sy)-(x + 6 * sx, y - 3 * sy), fcolor
 LINE -(x + 7 * sx, y - 2 * sy), fcolor
 LINE -(x + 7 * sx, y - 1 * sy), fcolor
 LINE -(x + 6 * sx, y), fcolor
 LINE -(x + 1 * sx, y), fcolor
 LINE -(x, y - 1 * sy), fcolor
 LINE -(x, y - 7 * sy), fcolor
 LINE -(x + 1 * sx, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 7 * sy), fcolor
 x = x + 10 * sx
 CASE "h"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE (x + 7 * sx, y)-(x + 7 * sx, y - 8 * sy), fcolor
 LINE (x, y - 4 * sy)-(x + 7 * sx, y - 4 * sy), fcolor
 x = x + 10 * sx
 CASE "i"
 LINE (x, y)-(x + 6 * sx, y), fcolor
 LINE (x, y - 8 * sy)-(x + 6 * sx, y - 8 * sy), fcolor
 LINE (x + 3 * sx, y)-(x + 3 * sx, y - 8 * sy), fcolor
 x = x + 9 * sx
 CASE "j"
 LINE (x, y - 2 * sy)-(x, y - 1 * sy), fcolor
 LINE -(x + 1 * sx, y), fcolor
 LINE -(x + 6 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 1 * sy), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 x = x + 10 * sx
 CASE "k"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE (x, y - 4 * sy)-(x + 7 * sx, y - 8 * sy), fcolor
 LINE (x, y - 4 * sy)-(x + 7 * sx, y), fcolor
 x = x + 10 * sx
 CASE "l"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE (x, y)-(x + 6 * sx, y), fcolor
 x = x + 9 * sx
 CASE "m"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE -(x + 3 * sx, y - 5 * sy), fcolor
 LINE -(x + 4 * sx, y - 5 * sy), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y), fcolor
 x = x + 10 * sx
 CASE "n"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 x = x + 10 * sx
 CASE "o"
 LINE (x, y - 2 * sy)-(x, y - 6 * sy), fcolor
 LINE -(x + 1 * sx, y - 7 * sy), fcolor
 LINE -(x + 2 * sx, y - 8 * sy), fcolor
 LINE -(x + 5 * sx, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 7 * sy), fcolor
 LINE -(x + 7 * sx, y - 6 * sy), fcolor
 LINE -(x + 7 * sx, y - 2 * sy), fcolor
 LINE -(x + 6 * sx, y - 1 * sy), fcolor
 LINE -(x + 5 * sx, y), fcolor
 LINE -(x + 2 * sx, y), fcolor
 LINE -(x + 1 * sx, y - 1 * sy), fcolor
 LINE -(x, y - 2 * sy), fcolor
 x = x + 10 * sx
 CASE "p"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 7 * sy), fcolor
 LINE -(x + 7 * sx, y - 5 * sy), fcolor
 LINE -(x + 6 * sx, y - 4 * sy), fcolor
 LINE -(x, y - 4 * sy), fcolor
 x = x + 10 * sx
 CASE "q"
 LINE (x, y - 3 * sy)-(x, y - 6 * sy), fcolor
 LINE -(x + 2 * sx, y - 8 * sy), fcolor
 LINE -(x + 5 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 6 * sy), fcolor
 LINE -(x + 7 * sx, y - 3 * sy), fcolor
 LINE -(x + 5 * sx, y - 1 * sy), fcolor
 LINE -(x + 2 * sx, y - 1 * sy), fcolor
 LINE -(x, y - 3 * sy), fcolor
 LINE (x + 3 * sx, y - 3 * sy)-(x + 5 * sx, y), fcolor
 x = x + 10 * sx
 CASE "r"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 7 * sy), fcolor
 LINE -(x + 7 * sx, y - 5 * sy), fcolor
 LINE -(x + 6 * sx, y - 4 * sy), fcolor
 LINE -(x, y - 4 * sy), fcolor
 LINE (x + 2 * sx, y - 4 * sy)-(x + 7 * sx, y), fcolor
 x = x + 10 * sx
 CASE "s"
 LINE (x, y - 2 * sy)-(x + 2 * sx, y), fcolor
 LINE -(x + 5 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 2 * sy), fcolor
 LINE -(x + 5 * sx, y - 4 * sy), fcolor
 LINE -(x + 2 * sx, y - 4 * sy), fcolor
 LINE -(x, y - 6 * sy), fcolor
 LINE -(x + 2 * sx, y - 8 * sy), fcolor
 LINE -(x + 5 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 6 * sy), fcolor
 x = x + 10 * sx
 CASE "t"
 LINE (x, y - 8 * sy)-(x + 6 * sx, y - 8 * sy), fcolor
 LINE (x + 3 * sx, y - 8 * sy)-(x + 3 * sx, y), fcolor
 x = x + 9 * sx
 CASE "u"
 LINE (x, y - 8 * sy)-(x, y - 1 * sy), fcolor
 LINE -(x + 1 * sx, y), fcolor
 LINE -(x + 6 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 1 * sy), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 x = x + 10 * sx
 CASE "v"
 LINE (x, y - 8 * sy)-(x + 3 * sx, y), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 x = x + 9 * sx
 CASE "w"
 LINE (x, y - 8 * sy)-(x, y), fcolor
 LINE -(x + 3 * sx, y - 3 * sy), fcolor
 LINE -(x + 4 * sx, y - 3 * sy), fcolor
 LINE -(x + 7 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 x = x + 10 * sx
 CASE "x"
 LINE (x, y - 8 * sy)-(x + 7 * sx, y), fcolor
 LINE (x, y)-(x + 7 * sx, y - 8 * sy), fcolor
 x = x + 10 * sx
 CASE "y"
 LINE (x, y - 8 * sy)-(x + 3 * sx, y - 5 * sy), fcolor
 LINE -(x + 3 * sx, y), fcolor
 LINE (x + 3 * sx, y - 5 * sy)-(x + 6 * sx, y - 8 * sy), fcolor
 x = x + 9 * sx
 CASE "z"
 LINE (x, y - 8 * sy)-(x + 7 * sx, y - 8 * sy), fcolor
 LINE -(x, y), fcolor
 LINE -(x + 7 * sx, y), fcolor
 x = x + 10 * sx
 CASE "1"
 LINE (x, y - 6 * sy)-(x + 2 * sx, y - 8 * sy), fcolor
 LINE -(x + 3 * sx, y - 8 * sy), fcolor
 LINE -(x + 3 * sx, y), fcolor
 LINE (x, y)-(x + 6 * sx, y), fcolor
 x = x + 9 * sx
 CASE "2"
 LINE (x + 7 * sx, y)-(x, y), fcolor
 LINE -(x + 7 * sx, y - 6 * sy), fcolor
 LINE -(x + 5 * sx, y - 8 * sy), fcolor
 LINE -(x + 2 * sx, y - 8 * sy), fcolor
 LINE -(x, y - 6 * sy), fcolor
 x = x + 10 * sx
 CASE "3"
 LINE (x, y - 1 * sy)-(x + 1 * sx, y), fcolor
 LINE -(x + 6 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 1 * sy), fcolor
 LINE -(x + 7 * sx, y - 7 * sy), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 1 * sx, y - 8 * sy), fcolor
 LINE -(x, y - 7 * sy), fcolor
 LINE (x + 7 * sx, y - 4 * sy)-(x + 3 * sx, y - 4 * sy), fcolor
 x = x + 10 * sx
 CASE "4"
 LINE (x, y - 8 * sy)-(x, y - 4 * sy), fcolor
 LINE -(x + 7 * sx, y - 4 * sy), fcolor
 LINE (x + 6 * sx, y - 8 * sy)-(x + 6 * sx, y), fcolor
 x = x + 10 * sx
 CASE "5"
 LINE (x, y)-(x + 5 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 2 * sy), fcolor
 LINE -(x + 7 * sx, y - 3 * sy), fcolor
 LINE -(x + 6 * sx, y - 4 * sy), fcolor
 LINE -(x, y - 4 * sy), fcolor
 LINE -(x, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 x = x + 10 * sx
 CASE "6"
 LINE (x + 7 * sx, y - 7 * sy)-(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 1 * sx, y - 8 * sy), fcolor
 LINE -(x, y - 7 * sy), fcolor
 LINE -(x, y - 1 * sy), fcolor
 LINE -(x + 1 * sy, y), fcolor
 LINE -(x + 6 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 1 * sy), fcolor
 LINE -(x + 7 * sx, y - 3 * sy), fcolor
 LINE -(x + 6 * sx, y - 4 * sy), fcolor
 LINE -(x, y - 4 * sy), fcolor
 x = x + 10 * sx
 CASE "7"
 LINE (x, y - 8 * sy)-(x + 7 * sx, y - 8 * sy), fcolor
 LINE -(x, y), fcolor
 x = x + 10 * sx
 CASE "8"
 LINE (x, y - 5 * sy)-(x, y - 7 * sy), fcolor
 LINE -(x + 1 * sx, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 7 * sy), fcolor
 LINE -(x + 7 * sx, y - 5 * sy), fcolor
 LINE -(x + 6 * sx, y - 4 * sy), fcolor
 LINE -(x + 1 * sx, y - 4 * sy), fcolor
 LINE -(x, y - 3 * sy), fcolor
 LINE -(x, y - 1 * sy), fcolor
 LINE -(x + 1 * sx, y), fcolor
 LINE -(x + 6 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 1 * sy), fcolor
 LINE -(x + 7 * sx, y - 3 * sy), fcolor
 LINE -(x + 6 * sx, y - 4 * sy), fcolor
 x = x + 10 * sx
 CASE "9"
 LINE (x, y - 5 * sy)-(x, y - 7 * sy), fcolor
 LINE -(x + 1 * sx, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 7 * sy), fcolor
 LINE -(x + 7 * sx, y), fcolor
 LINE (x + 7 * sx, y - 4 * sy)-(x + 1 * sx, y - 4 * sy), fcolor
 LINE -(x, y - 5 * sy), fcolor
 x = x + 10 * sx
 CASE "0"
 LINE (x, y - 2 * sy)-(x, y - 6 * sy), fcolor
 LINE -(x + 1 * sx, y - 7 * sy), fcolor
 LINE -(x + 2 * sx, y - 8 * sy), fcolor
 LINE -(x + 5 * sx, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 7 * sy), fcolor
 LINE -(x + 7 * sx, y - 6 * sy), fcolor
 LINE -(x + 7 * sx, y - 2 * sy), fcolor
 LINE -(x + 6 * sx, y - 1 * sy), fcolor
 LINE -(x + 5 * sx, y), fcolor
 LINE -(x + 2 * sx, y), fcolor
 LINE -(x + 1 * sx, y - 1 * sy), fcolor
 LINE -(x, y - 2 * sy), fcolor
 LINE (x + 1 * sx, y - 1 * sy)-(x + 6 * sx, y - 7 * sy), fcolor
 x = x + 10 * sx
 CASE "."
 LINE (x, y)-(x, y - 1 * sy), fcolor
 LINE -(x + 1 * sx, y - 1 * sy), fcolor
 LINE -(x + 1 * sx, y), fcolor
 LINE -(x, y), fcolor
 'PAINT (x + 1, y + 1), fcolor
 x = x + 6 * sx
 CASE " "
 x = x + 10 * sx
 CASE ELSE
 LOCATE 5, 1: COLOR 3: PRINT "Sorry not done yet"
 END SELECT
NEXT i
END SUB


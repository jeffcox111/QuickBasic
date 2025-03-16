DECLARE SUB fprint (text$, x, y, fcolor, sx, sy)
SCREEN 12
fprint "  Tyrant Software Inc. ", 50, 50, 5, 1, 1
fprint "       Presents", 50, 65, 5, 1, 1
fprint "Press any key to continue...", 50, 80, 5, 1, 1

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
FOR d = 1 TO 200: NEXT d
NEXT i
END SUB


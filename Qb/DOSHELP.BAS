DECLARE SUB rgb (col!, r!, g!, b!)
DECLARE SUB delay ()
DECLARE SUB main ()
DECLARE SUB directory ()
DECLARE SUB format ()
DECLARE SUB search ()
DECLARE SUB check ()
DECLARE SUB del ()
DECLARE SUB zip ()
DECLARE SUB unzip ()
DECLARE SUB move ()
DECLARE SUB copy ()
DECLARE SUB mem ()
DECLARE SUB level ()
DECLARE SUB expert ()
DECLARE SUB rainbow ()
DECLARE SUB delayer ()
DECLARE SUB delay2 ()
DECLARE SUB delay3 ()
DECLARE SUB flash ()
rainbow
CLS
SCREEN 12
DRAW "c8 b l210 b u150 r90 f126 e126 r90 g180 f180 l90 h126 g126 l90 e180 h180"
DRAW "c8 b ul b l1 r90 f126 e126 r90 g180 f180 l90 h126 g126 l90 e180 h180"
DRAW "c8 b ul b l1 r90 f126 e126 r90 g180 f180 l90 h126 g126 l90 e180 h180"
DRAW "c8 b ul b l1 r90 f126 e126 r90 g180 f180 l90 h126 g126 l90 e180 h180"
LOCATE 28, 34
PRINT "Tyrant Software": LOCATE , 34
flash
SLEEP 1
main

SUB check
colorcode:
RANDOMIZE TIMER
x% = INT(RND * 15)

IF x% > 0 THEN
COLOR x%

ELSEIF x% = 0 THEN
GOTO colorcode
END IF


CLS
SHELL "chkdsk"
WHILE INKEY$ = ""
COLOR 2
PRINT "Press any key to continue..."
SLEEP
WEND
main
END SUB

SUB copy
CLS
INPUT "What is the file name"; d$
t$ = "copy " + d$ + " a:\"
SHELL t$
WHILE INKEY$ = ""
COLOR 2
PRINT "Press any key to continue..."
SLEEP
WEND
main
END SUB

SUB del
colorcode1:
RANDOMIZE TIMER
x% = INT(RND * 15)
IF x% > 0 THEN
COLOR x%

ELSEIF x% = 0 THEN
GOTO colorcode1
END IF


CLS
INPUT "Type file name"; r$
b$ = "del " + r$
SHELL b$
WHILE INKEY$ = ""
COLOR 2
PRINT "Press any key to continue..."
SLEEP
WEND
main
END SUB

SUB delay
FOR b = 1 TO 170
NEXT b
END SUB

SUB delay2
FOR b = 1 TO 50
NEXT b
END SUB

SUB delay3
FOR b = 1 TO 10
NEXT b
END SUB

SUB delayer
FOR t = 1 TO 85
NEXT t
END SUB

SUB directory
SHELL "cd c:\"
colorcode2:
RANDOMIZE TIMER
x% = INT(RND * 15)
IF x% > 0 THEN
COLOR x%

ELSEIF x% = 0 THEN
GOTO colorcode2
END IF

direct:
CLS
SHELL "c:\"
SHELL "cd c:\"
LOCATE 3, 33
PRINT "Choose": LOCATE , 33
PRINT " "
PRINT "1. A C:\ Directory"
PRINT " "
PRINT "2. A:\ drive"
PRINT " "
INPUT "=="; a%

IF a% = 1 THEN
INPUT "Type directory name"; a$
b$ = "cd " + a$
SHELL b$
PRINT "You are now in "; a$
GOTO after1

ELSEIF a% = 2 THEN
SHELL "a:\"
GOTO after1

ELSE
GOTO direct

END IF

after1:
WHILE INKEY$ = ""
COLOR 2
PRINT "Press any key to continue..."
SLEEP
WEND
main
END SUB

SUB expert
CLS
PRINT "If you come to a DOS prompt by accident or  "
PRINT "you just want to exit type EXIT, to go back"
PRINT "to the level change type the letter C"
PRINT "At a ? press H to get help. This works just"
PRINT "Like DOS."

menu:
INPUT " "; a$
IF a$ = "EXIT" THEN
main

ELSEIF a$ = "exit" THEN
main

ELSEIF a$ = "Exit" THEN
main

ELSEIF a$ = "c" THEN
level

ELSEIF a$ = "C" THEN
level

ELSEIF a$ = "H" THEN
GOTO help

ELSEIF a$ = "h" THEN
GOTO help

ELSEIF a$ = "c" THEN
level

ELSEIF a$ = "c" THEN
level

ELSE
SHELL a$
SLEEP 1
GOTO menu
END IF


help:
CLS
PRINT "If you come to a DOS prompt by accident or  "
PRINT "you just want to exit type EXIT, to go back"
PRINT "to the level change type the letter C This works"
PRINT "just like DOS."
GOTO menu
END SUB

SUB flash
rgb 0, 60, 60, 60
FOR x = 60 TO 1 STEP -1
rgb 0, x, x, x
delayer
NEXT x

END SUB

SUB format
colorcode3:
RANDOMIZE TIMER
x% = INT(RND * 15)
IF x% > 0 THEN
COLOR x%

ELSEIF x% = 0 THEN
GOTO colorcode3
END IF

CLS
SHELL "format a:"
WHILE INKEY$ = ""
COLOR 2
PRINT "Press any key to continue..."
SLEEP
WEND
main
END SUB

SUB level
CLS
LOCATE 3, 33
PRINT "What Level?": LOCATE , 33
PRINT " "
PRINT "R) Regular"
PRINT " "
PRINT "E) Expert"
PRINT " "
INPUT "=="; o$

IF o$ = "r" THEN
main

ELSEIF o$ = "R" THEN
main

ELSEIF o$ = "e" THEN
expert

ELSEIF o$ = "E" THEN
expert

END IF
END SUB

SUB main
2 CLS
SCREEN 12
LOCATE 3, 1
COLOR 1
PRINT "                                   Main Menu                    software"
PRINT " "
PRINT " "
DRAW "b u210 b r165 c8 r5 f7 e7 r5 g10 f10 l5 h7 g7 l 5 e 10 h10"
DRAW "b u1 b l1 c8 r5 f7 e7 r5 g10 f10 l5 h7 g7 l 5 e 10 h10"
LOCATE 6, 60
PRINT DATE$: LOCATE , 60
PRINT TIME$
PRINT " "
PRINT " "
COLOR 12
PRINT "1. Change Directory                               7. Zip A Directory"
PRINT " "
COLOR 3
PRINT "2. Format A Disk                                  8. Unzip A File"
PRINT " "
COLOR 4
PRINT "3. Search Directory                               9. Move A File"
PRINT " "
COLOR 5
PRINT "4. Check Disk                                    10. Copy A File to Disk"
PRINT " "
COLOR 6
PRINT "5. Delete a file                                 "
PRINT " "
COLOR 7
PRINT "6. Memory                                        (C) Change Level"
PRINT " "
COLOR 9
PRINT "(Q) Quit !"
PRINT " "
COLOR 8
INPUT "Press number of selection"; a$

IF a$ = "1" THEN
directory

ELSEIF a$ = "2" THEN
format

ELSEIF a$ = "3" THEN
search

ELSEIF a$ = "4" THEN
check

ELSEIF a$ = "5" THEN
del

ELSEIF a$ = "7" THEN
zip

ELSEIF a$ = "8" THEN
unzip

ELSEIF a$ = "9" THEN
move

ELSEIF a$ = "6" THEN
mem

ELSEIF a$ = "Q" THEN
BEEP
END

ELSEIF a$ = "q" THEN
BEEP
END

ELSEIF a$ = "10" THEN
copy

ELSEIF a$ = "C" THEN
level

ELSEIF a$ = "c" THEN
level

ELSE
GOTO 2
END IF
END SUB

SUB mem
f:
RANDOMIZE TIMER
x% = INT(RND * 15)

IF x% = 0 THEN
GOTO f

ELSEIF x% > 0 THEN
COLOR x%
END IF

CLS
SHELL "mem"

WHILE INKEY$ = ""
COLOR 2
PRINT "Press any key to continue..."
SLEEP
WEND
main
END SUB

SUB move
CLS
INPUT "What is the file name"; y$
INPUT "What directory do you want it in"; u$
e$ = "move " + y$ + " c:\" + u$
SHELL e$
BEEP
WHILE INKEY$ = ""
COLOR 2
PRINT "Press any key to continue..."
SLEEP
WEND
main
END SUB

SUB rainbow
CLS
SCREEN 13
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
rgb x + 180, x - 60, x, 60
NEXT x
FOR x = 1 TO 15
rgb x + 240, x, x, x
NEXT x

FOR x = 1 TO 240
LINE (x, 100)-(x, x), x
delayer
NEXT x

FOR x = 1 TO 240
LINE (0, x)-(x, x), x
delayer
NEXT x

FOR x = 1 TO 240
LINE (x, x)-(x, 0), x
delayer
NEXT x

FOR x = 1 TO 240
LINE (x, x)-(0, 0), x
delay2
NEXT x

FOR x = 1 TO 240
LINE (x, x)-(0, 0), x
delay3
NEXT x


WHILE INKEY$ = ""
SLEEP
WEND


END SUB

SUB rgb (col, r, g, b)
OUT &H3C8, col    'Certain Color Number
OUT &H3C9, r    'Red Value of color
OUT &H3C9, g    'Green Value of color
OUT &H3C9, b    'Blue Value of color
END SUB

SUB search
colorcode4:
RANDOMIZE TIMER
x% = INT(RND * 15)
IF x% > 0 THEN
COLOR x%

ELSEIF x% = 0 THEN
GOTO colorcode4
END IF

search:
CLS
LOCATE 3, 33
PRINT "Search by": LOCATE , 33
PRINT " "
PRINT "1. Extension"
PRINT " "
PRINT "2. All"
PRINT " "
INPUT "=="; a%

IF a% = 1 THEN
CLS
INPUT "What is the extension"; d$
Q$ = "dir/w *." + d$
SHELL Q$
GOTO after

ELSEIF a% = 2 THEN
SHELL "dir/p"
GOTO after

ELSE
search
END IF

after:
WHILE INKEY$ = ""
COLOR 2
PRINT "Press any key to continue..."
SLEEP
WEND
main
END SUB

SUB unzip
colorcode5:
RANDOMIZE TIMER
x% = INT(RND * 15)
IF x% > 0 THEN
COLOR x%

ELSEIF x% = 0 THEN
GOTO colorcode5
END IF

CLS
PRINT "This uses PKUNZIP."
PRINT "Besure you have that in your DOS directory."
PRINT " "

FOR x = 1 TO 30
rgb 1, 0, x, 0
delay
NEXT x
COLOR 2
PRINT "                           Press any key to continue..."
x = 0
WHILE INKEY$ = ""
IF p = 0 THEN x = x + 1
IF x = 60 THEN p = 1
IF p = 1 THEN x = x - 1
IF x = 0 THEN x = x + 1: p = 0
rgb 2, x, x, x
delay
WEND


colorcode7:
RANDOMIZE TIMER
t% = INT(RND * 15)
IF t% > 0 THEN
COLOR t%

ELSEIF t% = 0 THEN
GOTO colorcode7
END IF


CLS
LOCATE 3, 33
PRINT "Is the ziped file in": LOCATE , 33
PRINT " "
PRINT "1. A C:\ directory"
PRINT " "
PRINT "2. A floppy disk"
PRINT " "
INPUT "=="; l%


IF l% = 1 THEN
CLS
INPUT "What is the file name"; d$
INPUT "What directory is it in"; y$
k$ = "md unzip"
e$ = "move " + d$ + " c:\unzip"
z$ = "cd " + y$
SHELL "cd c:\"
SHELL k$
SHELL "cd c:\"
SHELL z$
SHELL e$
SHELL "cd c:\unzip"
v$ = "pkunzip " + d$
SHELL v$
BEEP
GOTO after2


ELSEIF l% = 2 THEN
SHELL "a:\"
INPUT "What is the file name"; o$
f$ = "pkunzip " + o$
SHELL f$
GOTO after2:


ELSE
CLS
GOTO after2

END IF

after2:
WHILE INKEY$ = ""
COLOR 18
PRINT "Press any key to continue..."
SLEEP
WEND
main
END SUB

SUB zip
colorcode6:
RANDOMIZE TIMER
x% = INT(RND * 15)
IF x% > 0 THEN
COLOR x%

ELSEIF x% = 0 THEN
GOTO colorcode6
END IF

CLS
warning:
PRINT "This uses PKZIP to zip a file."
PRINT "This zips a whole directory."
PRINT "Make sure a file you want zipped are in that"
PRINT "directory and you have selected that directory."
INPUT "Continue (y/n)"; t$

IF t$ = "y" THEN
GOTO 1

ELSEIF t$ = "n" THEN
main

ELSE
GOTO warning
END IF

1 CLS
LOCATE 3, 30
PRINT "What to Zip???"
PRINT " "
PRINT "1. Zip files in a Hard drive directory"
PRINT " "
PRINT "2. Zip files on a floppy disk"
PRINT " "
INPUT "=="; g%

IF g% = 1 THEN
GOTO zip1

ELSEIF g% = 2 THEN
GOTO zip2

ELSE
main

zip1:
CLS
PRINT "Remember to add a zip extension"
INPUT "What should the zip be named"; f$
g$ = "pkzip " + f$
SHELL g$
GOTO done

zip2:
CLS
PRINT "Remember to add a zip extension"
INPUT "What should the name be"; i$
SHELL "a:\"
h$ = "pkzip " + i$
SHELL h$
GOTO done

done:
WHILE INKEY$ = ""
COLOR 2
PRINT "Press any key to continue..."
SLEEP
WEND
END IF
main
END SUB


DECLARE SUB tactical ()
DECLARE SUB crystal ()
DECLARE SUB flash1 ()
DECLARE SUB dobridge ()
DECLARE SUB doeng ()
DECLARE SUB cl ()
DECLARE SUB login ()
DECLARE SUB main ()
DECLARE SUB c7 ()
DECLARE SUB rgb (col!, r!, g!, b!)
DECLARE SUB delay ()
DECLARE SUB intro ()
DECLARE SUB doboxes ()
DIM SHARED ll
DIM SHARED nm$
DIM SHARED box1$
DIM SHARED box2$
DIM SHARED place
DIM SHARED op
place = 1
SCREEN 12
LOCATE 15, 30
PRINT "  Entity Software": LOCATE , 30
PRINT "      presents   "
flash1
CLS
LOCATE 15, 15
PRINT "              Star Trek The Next Generation": LOCATE , 15
PRINT "Based on the episode: 'The Best of Both Worlds 1 and 2'": LOCATE , 15
flash1
CLS
flash1
intro
CLS
dobridge
login
main

SUB c7
rgb 7, 30, 30, 30
COLOR 7
END SUB

SUB cl
SLEEP 2
FOR x = 60 TO 1 STEP -1
rgb 6, x, x, x
delay
NEXT x
FOR x = 1 TO 5
LOCATE 15 + x, 2
PRINT "                                     ";
NEXT x
rgb 6, 60, 60, 60
END SUB

SUB crystal
rgb 4, 30, 0, 0
PSET (12, 12)
DRAW "c7d3f7r55e7u3l68"
PAINT (13, 13), 7
PSET (12, 15)
DRAW "c6u3r68"
PSET (12, 155)
DRAW "c7d3f7r55e7u3l68"
PAINT (13, 156), 7
PSET (12, 158)
DRAW "c6u3r68"
PSET (100, 100)
FOR cc = 8 TO 15
crys$ = "c" + STR$(cc) + "u2r1u1r2u1r4u1r40d1r4d1r2d1r1d2l1d1l4l48u1l1u2"
PSET (20, 150 - 8 * ((cc - 8)))
DRAW crys$
PAINT (22, 149 - (8 * (cc - 8))), cc
NEXT cc
FOR cc = 8 TO 15
crys$ = "c" + STR$(cc) + "u2r1u1r2u1r4u1r40d1r4d1r2d1r1d2l1d1l4l48u1l1u2"
PSET (20, 86 - 8 * ((cc - 8)))
DRAW crys$
PAINT (22, 85 - (8 * (cc - 8))), cc
NEXT cc
PSET (8, 140)
DRAW "c4u5r280d5l50d63l5u63l50d63l5u63l50d63l5u63l50d63l5u63l60"
PAINT (9, 139), 4
CIRCLE (400, 112), 50, 7
CIRCLE (400, 112), 25, 7
PSET (447, 130)
DRAW "c7m475,112m447,94"

END SUB

SUB delay
FOR bbb = 1 TO 20
NEXT bbb
END SUB

SUB dobridge
CLS
rgb 2, 0, 0, 0
rgb 3, 0, 0, 0
rgb 5, 0, 0, 0
COLOR 1
PSET (5, 5)
box1$ = "c1d200r1d1u202r300d1r1l300d1l1d200R300u1r1l300u1d1r300u1l1r1u199l1d199"
DRAW box1$
PSET (306, 5)
DRAW box1$
PSET (5, 225)
COLOR 5
box2$ = "c5d200r1d1u202r300d1r1l300d1l1d200R300u1r1l300u1d1r300u1l1r1u199l1d199"
DRAW box2$
PSET (306, 225)
DRAW box2$
FOR x = 1 TO 60
rgb 1, 0, 0, x
rgb 5, 0, 0, x / 2
rgb 3, x / 2, x / 2, x / 2
delay
NEXT x
RANDOMIZE TIMER
FOR z = 1 TO 250
x = INT(RND * 294) + 7
y = INT(RND * 194) + 7
COLOR 2
PSET (x, y)
NEXT z
LOCATE 14, 1
PRINT "              View Screen"
COLOR 4
rgb 4, 60, 0, 0
bar$ = "r77d1l77d1r77d1l77d1r77"
PSET (445, 20)
DRAW bar$
PSET (445, 37)
DRAW bar$
PSET (445, 52)
DRAW bar$
PSET (445, 69)
DRAW bar$

LOCATE 2, 45
COLOR 2
PRINT "    Shields ": LOCATE , 45
PRINT " Core Temp. ": LOCATE , 45
PRINT "    Phasers ": LOCATE , 45
PRINT "Hull Integ. ": LOCATE , 45
PRINT "Condition      Green": LOCATE , 45

FOR x = 1 TO 60
rgb 2, x, x, x
delay
NEXT x
FOR x = 1 TO 60
rgb 4, 60 - x, x, 0
delay
NEXT x
END SUB

SUB doeng
CLS
LOCATE 14, 1
PRINT "              Engineering"
rgb 2, 0, 0, 0
rgb 3, 0, 0, 0
rgb 5, 0, 0, 0
COLOR 1
PSET (5, 5)
box1$ = "c1d200r1d1u202r300d1r1l300d1l1d200R300u1r1l300u1d1r300u1l1r1u199l1d199"
DRAW box1$
PSET (306, 5)
DRAW box1$
PSET (5, 225)
COLOR 5
box2$ = "c5d200r1d1u202r300d1r1l300d1l1d200R300u1r1l300u1d1r300u1l1r1u199l1d199"
DRAW box2$
FOR x = 1 TO 60
rgb 1, x / 2, 0, x / 2
rgb 5, 0, 0, x / 2
rgb 3, x / 2, x / 2, x / 2
delay
NEXT x

FOR x = 8 TO 15
rgb x, 0, 0, x * 4
NEXT x

crystal
LOCATE 16, 42
COLOR 6
PRINT "System Reserves :": LOCATE , 42
PSET (465, 245)
DRAW "c5r100d1l100d1r100d1l100d1r100"
PRINT "Reserves are currently at 100%": LOCATE , 42
PRINT "        Shields :": LOCATE , 42
PSET (465, 278)
DRAW "c5r100d1l100d1r100d1l100d1r100"
PRINT "    Life Support:": LOCATE , 42
PSET (465, 295)
DRAW "c5r100d1l100d1r100d1l100d1r100"
PRINT "  Communications:": LOCATE , 42
PSET (465, 310)
DRAW "c5r100d1l100d1r100d1l100d1r100"
PRINT "    Transporters:": LOCATE , 42
PSET (465, 325)
DRAW "c5r100d1l100d1r100d1l100d1r100"
END SUB

SUB flash1
rgb 0, 60, 60, 60
FOR x = 60 TO 1 STEP -1
rgb 0, x, x, x
delay
NEXT x
END SUB

SUB intro
rgb 7, 30, 30, 30
COLOR 1
rgb 1, 0, 0, 0
PRINT "                              Stardate 43989.1"
PRINT STRING$(80, "Ä")
PRINT " The Enterprise at Jouret IV finds the New Providence to be totally destroyed."
PRINT " There is no sign of the colony's 900 colonists.  Evidence suggests that it is "
PRINT " the work of the Borg..."
PRINT STRING$(80, "Ä")
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
FOR y = 30 TO 0 STEP -1
rgb 1, 0, y, 0
delay
NEXT y
FOR y = x TO 0 STEP -1
rgb 2, y, y, y
delay
NEXT y


END SUB

SUB login
COLOR 6
rgb 6, 60, 60, 60

LOCATE 16, 2
PRINT "U.S.S. Enterprise NCC-1701-D CPU ": LOCATE , 2
PRINT "Please login [last name]:";
LINE INPUT ""; nm$: LOCATE , 2
PRINT "Good Morning, Captain " + nm$: LOCATE , 2
cl
END SUB

SUB main
ll = 16
GOTO s
main:
FOR x = 1 TO 30 STEP 2
rgb 7, x + 30, x + 30, x + 30
delay
NEXT x
s:
COLOR 6
LOCATE 16, 2
IF place = 1 THEN c7 ELSE COLOR 6
PRINT "               Bridge         ": LOCATE , 2
IF place = 2 THEN c7 ELSE COLOR 6
PRINT "             Engineering      ": LOCATE , 2
IF place = 3 THEN c7 ELSE COLOR 6
PRINT "             Shuttle Bay      ": LOCATE , 2
IF place = 4 THEN c7 ELSE COLOR 6
PRINT "             Transporter      ": LOCATE , 2
IF place = 5 THEN c7 ELSE COLOR 6
PRINT "             Ten Foward       ": LOCATE , 2
IF place = 6 THEN c7 ELSE COLOR 6
PRINT "              Tactical        ": LOCATE , 2
LOCATE 16, 42
IF op = 1 THEN
IF place = 20 THEN c7 ELSE COLOR 6
PRINT "Commander Worf": LOCATE , 42
IF place = 21 THEN c7 ELSE COLOR 6
PRINT "Commander Data": LOCATE , 42
IF place = 22 THEN c7 ELSE COLOR 6
PRINT "         Riker": LOCATE , 42
IF place = 23 THEN c7 ELSE COLOR 6
PRINT "      Computer"
END IF
WHILE k$ <> CHR$(27)
k$ = INKEY$
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
IF k$ = CHR$(0) + CHR$(72) THEN place = place - 1: IF place = 0 THEN place = 6: GOTO main ELSE GOTO main
IF k$ = CHR$(0) + CHR$(80) THEN place = place + 1: IF place = 7 THEN place = 1: GOTO main ELSE GOTO main
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
IF k$ = CHR$(0) + CHR$(80) THEN place = place + 1: IF place = 24 THEN place = 20: GOTO main ELSE GOTO main
IF k$ = CHR$(0) + CHR$(72) THEN place = place - 1: IF place = 19 THEN place = 23: GOTO main ELSE GOTO main
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
IF op = 1 THEN
IF k$ = CHR$(9) AND place > 0 AND place < 10 THEN place = 20: GOTO main
IF k$ = CHR$(9) AND place > 19 AND place < 30 THEN place = 1: GOTO main
END IF
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
IF k$ = CHR$(13) THEN
        op = place
        IF place = 1 THEN dobridge: GOTO main
        IF place = 2 THEN doeng: GOTO main
        IF place = 20 THEN tactical: GOTO main
END IF
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
IF op = 2 THEN
ll = ll - 1
p = p + 1
IF p = 8 THEN p = 1
IF ll = 7 THEN ll = 15
IF ll < 15 THEN rgb ll, 0, 0, (p) * 4 * -1: delay
IF ll = 15 THEN rgb ll, 0, 0, (p) * 4 * -1: delay
END IF
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
WEND
END SUB

SUB rgb (col, r, g, b)
OUT &H3C8, col    'Certain Color Number
OUT &H3C9, r    'Red Value of color
OUT &H3C9, g    'Green Value of color
OUT &H3C9, b    'Blue Value of color
END SUB

SUB tactical
CLS
CLS
rgb 1, 0, 0, 0
PSET (110, 50)
DRAW "c1l100u1l1u2l1u4l1u10r1u4r1u2r1u1r100d24"
PAINT (95, 30), 1
LOCATE 3, 15
COLOR 1
PRINT "Tactical"
PSET (180, 50)
DRAW "c1r450u1r1u1r2u4r1u10l1u4l1u2l1u1l450d24"
PAINT (195, 30), 1
FOR x = 1 TO 60
rgb 1, 0, 0, x
delay
NEXT x

END SUB


DECLARE SUB waitclick ()
DECLARE SUB searchpat ()
DECLARE SUB inventory ()
'$DYNAMIC
'$INCLUDE: 'MLIB.INC'
DECLARE SUB waitkey ()
DECLARE SUB clss ()
DECLARE SUB loadclp (clp$)
DECLARE SUB waitup ()
DECLARE SUB login ()
DECLARE SUB drawmenubar ()
DECLARE SUB syscol ()
DECLARE SUB loadboxes ()
DECLARE SUB doevents ()
DECLARE SUB findbox ()
DECLARE SUB showpal (startcol!, endcol!)
DECLARE SUB loadfont ()
DECLARE SUB nPRINT (m$)
DECLARE SUB nLOCATE (a!, b!)
DECLARE SUB fx ()
DECLARE SUB intro ()
DECLARE SUB fadein (startcol!, endcol!)
DECLARE SUB flash ()
DECLARE SUB cls2 ()
DECLARE SUB fadeout (startcol!, endcol!)
DECLARE SUB loadpal (pal$)
DECLARE SUB loadgfx (pic$)
DIM SHARED alphabet(50, 5, 5)
DIM SHARED xxx AS INTEGER
DIM SHARED pal(255, 3)            '256 colors, 3 values per color.
DIM SHARED startcol, endcol       'Used for various pallete crap.
DIM SHARED nCOLOR                 'color used in nPRINT
DIM SHARED nSCREENx, nSCREENy     'X,Y coordinates of nPRINT font!
DIM SHARED joystick               'joystick exist y/n?
DIM SHARED box(100, 5) AS INTEGER 'coordinates for the box
DIM SHARED bxnum, inabox, id      'number of boxes,in one?,which box
DIM SHARED oldx%, oldy%           'old x,y coords.
DIM SHARED room                   'room
DIM SHARED power                  'power on tv
DIM SHARED winback(5000)          'video memory
DIM SHARED block(12000)           'clip
DIM SHARED button$                'picture of button
DIM SHARED inmenu, oldroom        'the menu
DIM SHARED code$                  'your id code (3857-74)
DIM SHARED gfx$, pl$              'effeciency in GFX loader
DIM SHARED inv(100)               'inventory
DIM SHARED inv3(100)              'inventory
DIM SHARED inv2(100) AS STRING * 20 'inv2  '*inventory
DIM SHARED cursor                 'cursor state
DIM SHARED diskin                 'disk in or not
DIM SHARED item
item = 0
inv2(0) = "NOTHING"
inv2(1) = "COCA-COLA CAN"
inv2(2) = "DISKETTE"
room = 1
cursor = 3
'Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=
''Ä=Ä=Ä=Ä=Ä=Ä=Ä   m a i n   m o d u l e   =Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=
'Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=
loadfont
loadboxes
SCREEN 13
loadpal "logo.pal"
clss
loadgfx "logo.gfx"
fadein 0, 255
flash
fadeout 0, 255
syscol
clss
loadpal "title.pal"
loadgfx "title.gfx"
syscol
fadein 30, 255
nLOCATE 0, 20
nCOLOR = 15
nPRINT " 1995 ENTITY SOFTWARE"
nCOLOR = 12
nPRINT " "
nPRINT "    YOU ARE ABOUT TO PLAY A DEMO OF NEMESIAH!"
nPRINT "THIS IS A MYSTERY GAME, IN WHICH YOU HAVE LOST YOUR"
nPRINT " MEMORY AFTER BEING BEATEN BY SOME UNKNOWN THUGS."
nPRINT "THE LAST THING YOU REMEMBER, IS WAKING UP, WHICH IS"
nPRINT "    WHERE THIS GAME WILL NOW PICK UP AT ...."
nPRINT " "
nCOLOR = 15
nPRINT "          (PRESS ANY KEY TO CONTINUE...)"
SLEEP
clss
syscol
gfx$ = "room.gfx"
pl$ = "room.pal"
loadpal "room.pal"
loadgfx "room.gfx"
showpal 0, 255
syscol
CALL InitPointer(X%)
CALL showpointer
theend = 0
WHILE 1 = 1
        CALL GetButtonM(b%, X%, y%)
        IF b% = 2 THEN
                cursor = cursor + 1
                IF cursor = 5 THEN cursor = 1
                oldx% = -1
                waitup
curs:
                IF cursor = 1 THEN CALL MAGNIFYGLASS0: syscol
                IF cursor = 2 THEN CALL HANDV0
                IF cursor = 3 THEN CALL ARROW0
                IF item = 0 AND cursor = 4 THEN cursor = 1: GOTO curs
                IF cursor = 4 THEN CALL HANDV0: OUT &H3C8, 15: OUT &H3C9, 0: OUT &H3C9, 60: OUT &H3C9, 40
                
        END IF
        doevents
        findbox
WEND
'Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=
' e n d
'Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=
clss
SCREEN 0
WIDTH 80
END
'Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=
' data
'Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=Ä=
DATA 47
'0 M E N U   B A R
DATA 0
DATA 0,0
DATA 320,1,0
'1 Main Room Calendar
DATA 1
DATA 0,0
DATA 100,110,1
'2 Main Room to Door
DATA 1
DATA 170,5
DATA 215,155,3
'3 date1, room2
DATA 2
DATA 120,90
DATA 150,110,1
'4 date2, room2
DATA 2
DATA 175,110
DATA 200,130,1
'5 date3, room2
DATA 2
DATA 90,125
DATA 120,150,1
'6 Exit to left from Calendar
DATA 2
DATA 0,0
DATA 60,320,3
'7 Exit to right from Calendar
DATA 2
DATA 265,0
DATA 320,200,3
'8 Get Disk Under Rug
DATA 11
DATA 120,45
DATA 180,110,2
'9 Look at TV from Main Room
DATA 1
DATA 270,30
DATA 320,90,1
'10 Exit to hall
DATA 1
DATA 285,95
DATA 320,170,3
'11 Exit from Hall to Main Room To RIGHT
DATA 4
DATA 295,0
DATA 320,200,3
'12 Power Button
DATA 5
DATA 260,35
DATA 300,50,2
'13 Exit to Main Room from TV
DATA 5
DATA 285,130
DATA 320,200,3
'14 Exit from Hall to Main Room To LEFT
DATA 4
DATA 0,0
DATA 20,320,3
'15 Rotate LEFT in Main Room
DATA 1
DATA 0,115
DATA 20,200,3
'16 Look at Calendar from Rear View
DATA 6
DATA 275,15
DATA 320,125,1
'17 Rotate to Right Main from Rear View
DATA 6
DATA 285,130
DATA 320,200,3
'18 Exit to Main Room from DOOR
DATA 12
DATA 90,165
DATA 210,200,3
'19 Look at Post-It
DATA 6
DATA 130,60
DATA 170,90,1
'20 Rotate Left to Main Room from Rear View
DATA 6
DATA 0,0
DATA 30,200,3
'21, ******************
DATA -10000
DATA 265,0
DATA 320,200,3
'22, Exit Game
DATA -1
DATA 3,3
DATA 33,18,-1
'23 Goto Window Room
DATA 4
DATA 50,5
DATA 200,150,3
'24 goto room "1"
DATA 8
DATA 0,180
DATA 270,200,3
'25 look at vase (COKE)
DATA 8
DATA 235,75
DATA 280,145,1
'26 exit from vase
DATA 9
DATA 0,120
DATA 320,200,3
'27 get COKE can
DATA 9
DATA 145,55
DATA 180,90,2
'28 i n v e n t o r y
DATA -1
DATA 111,3
DATA 141,18,-1
'29 chest
DATA 8
DATA 230,135
DATA 320,200,1
'30 EXIT chest
DATA 10
DATA 270,120
DATA 320,200,3
'31 Calendar desc.
DATA 2
DATA 60,165
DATA 85,190,1
'32 disk under rug
DATA 8
DATA 90,155
DATA 100,160,1
'33 door knob
DATA 12
DATA 175,45
DATA 195,55,2
'34 Return to Main Room from Hall
DATA 13
DATA 105,165
DATA 240,200,3
'35 door 1 in hall
DATA 13
DATA 70,10
DATA 90,175,3
'36 door 2 in hall
DATA 13
DATA 260,10
DATA 270,175,3
'37 door 1 exit
DATA 14
DATA 250,1
DATA 320,200,3
'38 door 2 exit
DATA 15
DATA 250,1
DATA 320,200,3
'39 further down hall
DATA 13
DATA 135,20
DATA 215,95,3
'40 return to hall 1
DATA 16
DATA 20,175
DATA 270,200,3
'41 look at picture
DATA 16
DATA 120,60
DATA 195,110,1
'42 return to hall 2 from pic.
DATA 17
DATA 20,175
DATA 270,200,3
'43 insert disk
DATA 5
DATA 255,65
DATA 305, 75, 4
'44 eject disk
DATA 5
DATA 255,65
DATA 305, 75, 2
'45 too close
DATA 2
DATA 90,5
DATA 240,70,1
'46 go left in hall
DATA 16
DATA 0,10
DATA 40,320,3
'47 return to hall
DATA 18
DATA 50,180
DATA 255,200,3

REM $STATIC
SUB cls2
FOR X = 0 TO 255: OUT &H3C8, X: OUT &H3C9, 0: OUT &H3C9, 0: OUT &H3C9, 0: NEXT X
END SUB

SUB clss
CLS
cls2
nLOCATE 0, 0
nCOLOR = 15
END SUB

SUB doevents
CALL GetButtonM(button%, X%, y%)
rc = 0
X% = X% / 2
        IF button% = 1 THEN
top:
        IF id = 22 THEN END
        IF id = 12 THEN
                IF power = 0 THEN power = 1: GOTO skiprc
                IF power = 1 THEN GOTO skiprc
        END IF
        IF id = 44 AND diskin = 1 THEN inv(2) = 1: diskin = 0: hidepointer: loadgfx "tv.gfx": showpointer
        IF id = 46 THEN room = 18: gfx$ = "hall-l.gfx": pl$ = "hall-l.pal": rc = 1
        IF id = 41 THEN room = 17: gfx$ = "tj.gfx": pl$ = "tj.pal": rc = 1
        IF id = 47 OR id = 39 OR id = 42 THEN room = 16: gfx$ = "hall2.gfx": pl$ = "hall2.pal": rc = 1
        IF id = 35 THEN room = 14: gfx$ = "door1.gfx": pl$ = "door1.pal": rc = 1
        IF id = 36 THEN room = 15: gfx$ = "door1.gfx": pl$ = "door1.pal": rc = 1
        IF id = 33 OR id = 40 OR id = 37 OR id = 38 THEN room = 13: gfx$ = "hall.gfx": pl$ = "hall.pal": rc = 1
        IF id = 32 THEN room = 11: gfx$ = "disk.gfx": pl$ = "disk.pal": rc = 1
        IF id = 29 THEN room = 10: gfx$ = "chest.gfx": pl$ = "chest.pal": rc = 1
        IF id = 25 THEN room = 9: gfx$ = "coke.gfx": pl$ = "coke.pal": rc = 1
        IF id = 1 OR id = 16 THEN room = 2: gfx$ = "calen.gfx": pl$ = "calen.pal": rc = 1
        IF id = 34 OR id = 2 THEN room = 12: gfx$ = "door.gfx": pl$ = "door.pal": rc = 1
        IF id = 18 THEN room = 3: gfx$ = "disk.gfx": pl$ = "disk.pal": rc = 1
        IF id = 19 THEN nLOCATE 0, 0: nCOLOR = 15: nPRINT "MIKE SKINNER - 38-3968-91"
        IF id = 9 OR id = 12 THEN room = 5: gfx$ = "tv.gfx": pl$ = "tv.pal": rc = 1
        IF id = 20 OR id = 10 OR id = 13 OR id = 24 THEN room = 4: gfx$ = "room4.gfx": pl$ = "room4.pal": rc = 1
        IF id = 18 OR id = 14 OR id = 7 OR id = 17 THEN room = 1: gfx$ = "room.gfx": pl$ = "room.pal": rc = 1
        IF id = 21 OR id = 6 OR id = 11 OR id = 15 THEN room = 6: gfx$ = "room3.gfx": pl$ = "room3.pal": rc = 1
        IF id = 30 OR id = 23 OR id = 26 THEN room = 8: gfx$ = "room5.gfx": pl$ = "room5.pal": rc = 1
        IF rc = 1 THEN
rc:
                hidepointer
                clss
                loadgfx gfx$
                loadpal pl$
                searchpat
                showpal 0, 255
                syscol
                showpointer
        END IF
skiprc:
        IF id = 43 AND item = 2 THEN
                inv(2) = 0
                item = 0
                loadclp "tvd.clp"
                diskin = 1
                hidepointer
                PUT (255, 65), block, PSET
                showpointer
        END IF
       
        IF id = 36 THEN loadclp "door2.clp": PUT (115, 65), block, PSET
        IF id = 31 THEN
                loadgfx "calen.gfx"
                nLOCATE 0, 0
                nCOLOR = 15
                nPRINT "SEE SARA-DISK"
        END IF
        IF id = 28 THEN
                inventory
                hidepointer
                loadgfx gfx$
                searchpat
                showpointer
        END IF

        IF id = 27 THEN
        box(25, 0) = -99
        hidepointer
        clss
        room = -2
        loadpal "coke2.pal"
        showpal 0, 255
        syscol
        loadclp "coke2.clp"
        PUT (0, 0), block
        nPRINT " ": nPRINT " ": nPRINT " ": nPRINT " "
        nPRINT "                     YOU HAVE A COCA-COLA CAN."
        nPRINT "                     IT IS HALF-FULL OF WHAT "
        nPRINT "                     SMELLS LIKE 3 WEEK OLD COKE"
        inv(1) = 1
        inv3(1) = 1
        waitup
        waitclick
        showpointer
        room = 9: id = 26: GOTO top
        END IF
        IF id = 8 THEN
        box(32, 0) = -99
        hidepointer
        clss
        room = -2
        loadpal "disk2.pal"
        showpal 0, 255
        syscol
        loadclp "disk2.clp"
        PUT (0, 0), block
        nPRINT " ": nPRINT " ": nPRINT " ": nPRINT " "
        nPRINT "                     YOU FOUND A DISK LODGED"
        nPRINT "                     UNDER THE RUG.  THE THUGS "
        nPRINT "                     MUST NOT HAVE FOUND IT."
        inv(2) = 1
        inv3(2) = 1
        waitup
        waitclick
        showpointer
        room = 8: id = 30: GOTO top
        END IF
        IF id = 41 THEN nCOLOR = 15: nPRINT "AN EVIL, FOUL PRESENSE FILLS YOU AS": nPRINT "YOU GAZE INTO THE EYES OF THIS PICTURE.": nPRINT "YOU FEEL AS IF YOU HAVE SEEN HIM BEFORE."
        IF id = 12 AND power = 1 THEN login: rc = 1: showpointer: GOTO rc
        IF id = 45 THEN GOTO okcal
        IF id > 2 AND id < 6 THEN
okcal:
                loadgfx "calen.gfx"
                nCOLOR = 15
                nLOCATE 0, 0
                IF id = 3 THEN nPRINT "TENTH ANNIVERSARY OF": nPRINT "NUCLEAR HOLOCAUST."
                IF id = 4 THEN nPRINT "CALL MIKE SKINNER...": nPRINT "VERY IMPORTANT!!!"
                IF id = 5 THEN nPRINT "DEPOSIT PAYCHECK.": nPRINT "WITHDRAW CREDITS FOR TRIP!"
                IF id = 45 THEN nPRINT "YOU PERVERT.  YOU ARE CLOSE ENOUGH!!!"
        END IF
        END IF
END SUB

SUB drawmenubar
button$ = "c15u15r30c13d15l30"
oldroom = room
room = -1
hidepointer
GET (0, 0)-(319, 20), winback(1)
LINE (0, 0)-(320, 20), 14, BF
LINE (0, 0)-(319, 0), 15
LINE (0, 0)-(0, 20), 15
LINE (0, 20)-(319, 20), 13
LINE (319, 0)-(319, 20), 13
FOR X = 0 TO 3
PSET (3 + (X * 36), 17), 14: DRAW button$
NEXT X
nCOLOR = 0: nLOCATE 0, 1: nPRINT "EXIT  LOAD  SAVE  INV.  CURRENT ITEM - " + inv2(item)
showpointer
inmenu = 1
END SUB

SUB fadein (startcol, endcol)
FOR y = 0 TO 63 STEP 5
        FOR X = endcol TO startcol STEP -1
                OUT &H3C8, X
                IF y < pal(X, 1) THEN OUT &H3C9, y ELSE OUT &H3C9, pal(X, 1)
                IF y < pal(X, 2) THEN OUT &H3C9, y ELSE OUT &H3C9, pal(X, 2)
                IF y < pal(X, 3) THEN OUT &H3C9, y ELSE OUT &H3C9, pal(X, 3)
        NEXT X
NEXT y
END SUB

SUB fadeout (startcol, endcol)
FOR y = 0 TO 63 STEP 5
        FOR X = endcol TO startcol STEP -1
                OUT &H3C8, X
                IF pal(X, 1) - y > 0 THEN OUT &H3C9, pal(X, 1) - y ELSE OUT &H3C9, 0
                IF pal(X, 2) - y > 0 THEN OUT &H3C9, pal(X, 2) - y ELSE OUT &H3C9, 0
                IF pal(X, 3) - y > 0 THEN OUT &H3C9, pal(X, 3) - y ELSE OUT &H3C9, 0
        NEXT X
NEXT y
END SUB

SUB findbox
        CALL GetButtonM(button%, X%, y%)
        X% = X% / 2
        LOCATE 1, 1: PRINT X%, y%, id, room
        IF X% = oldx% AND y% = oldy% THEN GOTO skip
        IF inmenu = 0 AND X% >= box(0, 1) AND y% >= box(0, 2) AND X% <= box(0, 3) AND y% <= box(0, 4) THEN drawmenubar: GOTO skip
        IF inmenu = 1 AND y% > 20 THEN
                hidepointer
                PUT (0, 0), winback(1), PSET
                showpointer
                inmenu = 0
                room = oldroom
                GOTO skip
        END IF
        FOR y = 0 TO bxnum
                IF room = box(y, 0) AND X% >= box(y, 1) AND y% >= box(y, 2) AND X% <= box(y, 3) AND y% <= box(y, 4) AND box(y, 5) = -1 THEN GOTO menuok
                IF room = box(y, 0) AND X% >= box(y, 1) AND y% >= box(y, 2) AND X% <= box(y, 3) AND y% <= box(y, 4) AND box(y, 5) = cursor THEN
menuok:
                        IF y = 22 THEN id = y: inabox = 1: GOTO skip
                        IF y = 28 THEN id = y: inabox = 1: GOTO skip
                        IF inabox = 0 OR id <> y THEN
                                IF box(y, 5) = 1 THEN CALL MAGNIFYGLASS0: syscol
                                IF box(y, 5) = 2 THEN CALL HANDV0: syscol
                                IF box(y, 5) = 3 THEN CALL ARROW0: OUT &H3C8, 15: OUT &H3C9, 0: OUT &H3C9, 30: OUT &H3C9, 60
                                id = y: inabox = 1
                        END IF
                        IF inabox = 1 THEN GOTO skip
                ELSE
                        inabox = 0
                END IF
        NEXT y
nodice:
id = 0: IF cursor <> 4 THEN syscol

skip:
oldx% = X%: oldy% = y%
END SUB

SUB flash
FOR X = 64 TO 0 STEP -1
OUT &H3C8, 0
OUT &H3C9, X
OUT &H3C9, X
OUT &H3C9, X
        FOR y = 1 TO 500
        NEXT y
NEXT X

END SUB

SUB inventory
hidepointer
loadgfx gfx$
showpointer
room = oldroom
oldroom = room
room = -2
hidepointer
'clss
'CLS
nLOCATE 0, 0
syscol
PSET (20, 25), 15: DRAW "c15r280ldl279d150uru149"
PSET (21, 176), 13: DRAW "c13r280ul279r279u150dld149"
LINE (22, 27)-(299, 174), 14, BF
nCOLOR = 12
FOR X = 1 TO 5: nPRINT " ": NEXT X
nPRINT "                    INVENTORY"
nPRINT " "
nCOLOR = 0
a = 0
FOR X = 1 TO 100
IF inv(X) = 1 THEN a = a + 1: nPRINT "  " + STR$(a) + ") " + inv2(X)
NEXT X
IF a = 0 THEN nPRINT "    NOTHING!": SLEEP: GOTO bottominv
IF a > 0 THEN nCOLOR = 12: nLOCATE 4, 26: nPRINT "PLEASE SELECT AN ITEM TO USE (0 - NONE) "
sel = -1
WHILE sel = -1
b$ = INKEY$
IF VAL(b$) > 0 AND VAL(b$) <= a THEN sel = VAL(b$)
IF b$ = "0" THEN sel = 0: item = 0: GOTO bottominv
WEND
a = 0
FOR X = 1 TO 100
        IF inv(X) = 1 THEN a = a + 1
        IF a = sel THEN item = X: GOTO bottominv
NEXT X
bottominv:
room = oldroom
id = 0
showpointer
END SUB

SUB loadboxes
READ a
bxnum = a
FOR X = 0 TO a
READ box(X, 0), box(X, 1), box(X, 2), box(X, 3), box(X, 4), box(X, 5)
NEXT X
END SUB

SUB loadclp (clp$)
REDIM block(12000)
DEF SEG = VARSEG(block(0))
BLOAD clp$, VARPTR(block(0))
DEF SEG
END SUB

SUB loadfont
DIM c AS INTEGER
OPEN "alpha.bet" FOR BINARY AS #1
FOR z = 1 TO 50
FOR X = 1 TO 5
FOR y = 1 TO 5
GET #1, , c
alphabet(z, X, y) = c
NEXT y
NEXT X
NEXT z
CLOSE #1
END SUB

SUB loadgfx (pic$)
DEF SEG = &HA000
BLOAD pic$, 0
DEF SEG
END SUB

SUB loadpal (pal$)
OPEN pal$ FOR INPUT AS #1
FOR X = 0 TO 255
INPUT #1, r, g, b
pal(X, 1) = r
pal(X, 2) = g
pal(X, 3) = b
NEXT X
CLOSE #1
END SUB

SUB login
oldroom = room
room = -2
hidepointer
clss
syscol
showpointer
waitup
IF diskin = 0 THEN GOTO normal
IF diskin = 1 THEN GOTO bypass
normal:
hidepointer
nLOCATE 0, 0
nCOLOR = 15
nPRINT "   -------------------------------": nCOLOR = 12
nPRINT "      NEMESIAH ON-LINE CPU V1.1   ": nCOLOR = 15
nPRINT "         OCTOBER 11TH, 2018"
nPRINT "   -------------------------------"
nPRINT "   ENTER YOUR PERSONAL ID. NUMBER"
nPRINT "   (    -  )"
nCOLOR = 14
X = 4: nLOCATE X, 5
code$ = "": b$ = ""
WHILE LEN(code$) < 6
b$ = INKEY$
        IF VAL(b$) > 0 AND LEN(code$) < 6 THEN
                a$ = b$
                nPRINT b$
                X = X + 1
                code$ = code$ + a$
                IF LEN(code$) = 4 THEN X = X + 1
                nLOCATE X, 5
        END IF
WEND
nPRINT " "
IF code$ <> "386781" THEN
        nCOLOR = 15
        nPRINT "   INCORRECT PASSWORD!!!"
        SLEEP 1
        clss
outcpu:
        room = oldroom: power = 0: EXIT SUB
END IF
cpumenu:
CLS
nLOCATE 0, 0
nPRINT " WELCOME, JACK.  YOU HAVE 2 MESSAGE(S)."
nPRINT " --------------------------------------": nCOLOR = 12
nPRINT " (1) MESSAGE 1"
nPRINT " (2) MESSAGE 2"
nPRINT " (3) EXIT": nCOLOR = 15
nPRINT " --------------------------------------"
nPRINT " CHOICE (1-3)"
b$ = "": WHILE VAL(b$) < 1 OR VAL(b$) > 3
b$ = INKEY$
IF b$ = "3" THEN GOTO outcpu
IF b$ = "1" THEN
        clss
        loadpal "yuki.pal"
        loadclp "yuki.clp"
        PUT (0, 0), block
        showpal 0, 255
        syscol
        nCOLOR = 12
        nLOCATE 0, 5
        nPRINT "                         SENT - 10-9-18"
        nPRINT "                         PRIVATE - YES"
        nPRINT "                         FROM - SARA YOUNG"
        nPRINT "                         TO - JACK DALTON"
        nCOLOR = 15
        nLOCATE 0, 14: nPRINT "JACK,"
        nPRINT "        WHERE ARE YOU!  I CALLED YOUR WORK NUMBER,"
        nPRINT "BUT IT SAID THAT IT WAS A NON-VALID NUMBER!  THEN,"
        nPRINT "I CALLED THE MAIN FLOOR AND THEY SAID THERE WAS NO"
        nPRINT "EMPLOYEE CALLED JACK DALTON!  DID YOU GET FIRED!"
        nPRINT "DAMNIT, JACK!  YOU BETTER CALL ME, SOON!"
        nPRINT "                                           -SARA"
        nPRINT " "
        nPRINT "                -END OF MESSAGE-"
END IF
IF b$ = "2" THEN
        clss
        loadpal "notice.pal"
        loadclp "notice.clp"
        PUT (0, 0), block
        showpal 0, 255
        syscol
        nCOLOR = 12
        nLOCATE 0, 5
        nPRINT "                            SENT - 10-10-18"
        nPRINT "                            PRIVATE - YES"
        nPRINT "                            FROM - OCEANA APARTMENTS"
        nPRINT "                            TO - JACK DALTON"
        nCOLOR = 15
        nLOCATE 0, 14: nPRINT "MR. DALTON,"
        nPRINT "       YOUR RENT IS ONE WEEK OVER-DUE.  YOU HAVE "
        nPRINT "UNTIL THE 13TH TO PAY, OR YOU WILL BE EVICTED."
        nPRINT "AS OF 10-10-18, YOU OWE 300 CREDITS FOR ROOM, AND"
        nPRINT "A 5 PERCENT CHARGE OF 15 CREDITS FOR YOUR DELAYED"
        nPRINT "PAYMENT.  THANK YOU."
        nPRINT " "
        nPRINT "                                OCEANA APARTMENTS"
        nPRINT " "
        nPRINT "                -END OF MESSAGE-"
END IF

WEND
waitkey
GOTO cpumenu
showpointer

bypass:
hidepointer
nLOCATE 0, 0
nCOLOR = 15
nPRINT "   LOADING LOGIN BYPASS PROGRAM..."
SLEEP 1
nPRINT "   PROGRAM EXECUTION SUCCESSFUL."
nPRINT "   ENCRYPTING UPCOMING MESSAGE..."
SLEEP 1
CLS
nLOCATE 0, 0
nPRINT "   MEMO DATED - 10-10-95"
nPRINT "   "
nPRINT "   ----------------------------": nCOLOR = 12
nPRINT "   JOURNAL ENTRY OF JACK DALTON": nCOLOR = 15
nPRINT "   ----------------------------"
nPRINT " "
nPRINT "IF I AM ALIVE AFTER TONIGHT, IT WILL BE AMAZING."
nPRINT "BUT IF THEY SPARE MY LIFE, I WONT REMEMBER ANYTHING"
nPRINT "THAT HAPPENED, OR MY NAME.  SO IF I EVER GET BACK,"
nPRINT "I GUESS I SHOULD PROVIDE MYSELF WITH WHAT I THINK"
nPRINT "IS USEFUL.  MY NAME IS JACK DALTON, I WORK AS A "
nPRINT "PRIVATE INVESTIGATOR.  MY I.D. IS 3867-81.  I HAVE"
nPRINT "COPIED SOME IMPORTANT FILES ON THIS DISK, WHICH IS"
nPRINT "WHY I AM IN TROUBLE IN THE FIRST PLACE.  IVE GOTTA"
nPRINT "GET DOWNTOWN BEFORE ANYTHING HAPPENS.  I DONT EVEN"
nPRINT "KNOW WHY I LEFT MYSELF A MEMO, I AM GONNA DIE, I"
nPRINT "KNOW IT."
SLEEP
GOTO outcpu
END SUB

SUB nLOCATE (a, b)
nSCREENx = a
nSCREENy = b
END SUB

SUB nPRINT (m$)
m$ = UCASE$(m$)
FOR X = 1 TO LEN(m$)
        IF VAL(MID$(m$, X, 1)) > 0 THEN MID$(m$, X, 1) = CHR$(97 + VAL(MID$(m$, X, 1)))
        IF MID$(m$, X, 1) = "0" THEN MID$(m$, X, 1) = CHR$(107)
        IF MID$(m$, X, 1) = "." THEN MID$(m$, X, 1) = "[" '91 asc
        IF MID$(m$, X, 1) = "!" THEN MID$(m$, X, 1) = "\" '92 asc
        IF MID$(m$, X, 1) = "(" THEN MID$(m$, X, 1) = "]" '93 asc
        IF MID$(m$, X, 1) = ")" THEN MID$(m$, X, 1) = "^" '94 asc
        IF MID$(m$, X, 1) = " " THEN MID$(m$, X, 1) = "_" '95 asc
        IF MID$(m$, X, 1) = "," THEN MID$(m$, X, 1) = "`" '96 asc
        IF MID$(m$, X, 1) = "-" THEN MID$(m$, X, 1) = "a" '97 asc
NEXT X
FOR z = 1 + nSCREENx TO LEN(m$) + nSCREENx
  FOR X = 1 TO 5
    FOR y = 1 TO 5
      IF alphabet(ASC(MID$(m$, z - nSCREENx, 1)) - 64, X, y) <> 0 THEN
         PSET (z * 6 + X, y + (nSCREENy * 6)), nCOLOR
      END IF
    NEXT y
  NEXT X
NEXT z
nSCREENx = 0
nSCREENy = nSCREENy + 1
END SUB

SUB searchpat
                IF gfx$ = "room5.gfx" THEN IF inv3(2) = 1 THEN loadclp "r5patch.clp": PUT (80, 145), block, PSET
                IF gfx$ = "tv.gfx" AND diskin = 1 THEN loadclp "tvd.clp": PUT (255, 65), block, PSET
END SUB

SUB showpal (startcol, endcol)
FOR X = startcol TO endcol
        OUT &H3C8, X      'Color Value [1-256]
        OUT &H3C9, pal(X, 1)     'Red Value of color [1-63]
        OUT &H3C9, pal(X, 2)     'Green Value of color [1-63]
        OUT &H3C9, pal(X, 3)     'Blue Value of color [1-63]
NEXT X
END SUB

SUB syscol
OUT &H3C8, 12: OUT &H3C9, 0: OUT &H3C9, 0: OUT &H3C9, 50
OUT &H3C8, 13: OUT &H3C9, 30: OUT &H3C9, 30: OUT &H3C9, 30
OUT &H3C8, 14: OUT &H3C9, 50: OUT &H3C9, 50: OUT &H3C9, 50
OUT &H3C8, 15: OUT &H3C9, 60: OUT &H3C9, 60: OUT &H3C9, 60
END SUB

SUB waitclick
CALL GetButtonM(button%, X%, y%)
X% = X% / 2
WHILE button% <> 1
CALL GetButtonM(button%, X%, y%)
X% = X% / 2
WEND

END SUB

SUB waitkey
SLEEP
END SUB

SUB waitup
CALL GetButtonM(button%, X%, y%)
X% = X% / 2
WHILE button% <> 0
CALL GetButtonM(button%, X%, y%)
X% = X% / 2
WEND
END SUB


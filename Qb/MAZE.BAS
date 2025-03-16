DECLARE SUB Center (row!, text$)
DECLARE SUB Logo ()
DECLARE SUB Clearall ()
DECLARE SUB Drawmaze ()

' Objectives: Make it to the cash symbol, then to the blue circle that will
'                                 appear.

'                   Use the arrow keys to move your dot.
'                        Hit to space bar to stop.

'       If you are looking for the ultimate game, Ambush at South Range.

'                        Time to beat: 76 seconds

delay = 210

'     You may need to change the delay. I programmed this on a 486.
Logo
CLS
start:
CLS
SCREEN 0
WIDTH 80
Center 2, "QBasic Maze"
Center 4, "You begin in the left corner and must make it to the"
Center 5, "cash symbol and then to the blue circle to escape. But"
Center 6, "hurry, because I am timing you."
Center 8, "1) Begin"
Center 9, "2) See Hall-of-Fame"
Center 10, "3) Exit"
INPUT choic
IF choic = 2 THEN place = 1: Clearall: DO UNTIL INKEY$ <> "": LOOP: GOTO start
IF delay = 0 THEN delay = 1
IF choic = 3 THEN END
IF choic > 3 AND choic < 1 THEN GOTO start
TIMER ON
begin = TIMER
CLS
SCREEN 13
ps1 = 15
ps2 = 192
PSET (ps1, ps2), 41
i = 67
SWITCH = 0
Drawmaze
inky: aa$ = INKEY$
IF aa$ = CHR$(27) THEN END
IF aa$ = CHR$(0) + "H" THEN
Moveup = 1: Movedown = 0: Moveleft = 0: Moveright = 0
END IF
IF aa$ = CHR$(0) + "P" THEN
Movedown = 1: Moveup = 0: Moveleft = 0: Moveright = 0
END IF
IF aa$ = CHR$(0) + "K" THEN
Movedown = 0: Moveup = 0: Moveleft = 1: Moveright = 0
END IF
IF aa$ = CHR$(0) + "M" THEN
Movedown = 0: Moveup = 0: Moveleft = 0: Moveright = 1
END IF
IF aa$ = " " THEN
Moveup = 0
Movedown = 0
Moveleft = 0
Moveright = 0
END IF
IF Moveup = 1 THEN GOTO Moveup
IF Movedown = 1 THEN GOTO Movedown
IF Moveleft = 1 THEN GOTO Moveleft
IF Moveright = 1 THEN GOTO Moveright
IF Moveright = 0 AND Moveleft = 0 THEN
IF Moveup = 0 AND Movedown = 0 THEN GOTO inky
END IF
Moveup:
IF POINT(ps1, ps2 - 1) = 67 THEN GOTO inky
IF POINT(ps1, ps2 - 1) = 100 OR POINT(ps1, ps2 - 2) = 100 THEN
Clearall
GOTO playagain
END IF
IF POINT(ps1, ps2 - 1) = 38 OR POINT(ps1, ps2 - 2) = 38 THEN GOTO circledraw
IF POINT(ps1, ps2 - 1) <> 67 AND POINT(ps1, ps2 - 2) <> 67 THEN
FOR n = 1 TO 2
PSET (ps1, ps2), 41
FOR n = 1 TO delay: NEXT
PSET (ps1, ps2), 113
ps2 = ps2 - 1
NEXT
END IF
GOTO inky
Movedown:
IF POINT(ps1, ps2 + 1) = 67 THEN GOTO inky
IF POINT(ps1, ps2 + 1) = 100 OR POINT(ps1, ps2 + 2) = 100 THEN
Clearall: GOTO playagain
END IF
IF POINT(ps1, ps2 + 1) = 38 OR POINT(ps1, ps2 + 2) = 38 THEN GOTO circledraw
IF POINT(ps1, ps2 + 1) <> 67 AND POINT(ps1, ps2 + 2) <> 67 THEN
FOR n = 1 TO 2
PSET (ps1, ps2), 41
FOR n = 1 TO delay: NEXT
PSET (ps1, ps2), 113
ps2 = ps2 + 1
NEXT
END IF
GOTO inky
Moveleft:
IF POINT(ps1 - 1, ps2) = 100 OR POINT(ps1 - 2, ps2) = 100 THEN
Clearall
GOTO playagain
END IF
IF POINT(ps1 - 1, ps2) = 38 OR POINT(ps1 - 2, ps2) = 38 THEN GOTO circledraw
IF POINT(ps1 - 1, ps2) = 67 THEN GOTO inky
IF POINT(ps1 - 1, ps2) <> 67 AND POINT(ps1 - 2, ps2) <> 67 THEN
FOR n = 1 TO 2
PSET (ps1, ps2), 41
FOR n = 1 TO delay: NEXT
PSET (ps1, ps2), 113
ps1 = ps1 - 1
NEXT
END IF
GOTO inky
Moveright:
IF POINT(ps1 + 1, ps2) = 67 THEN GOTO inky
IF POINT(ps1 + 1, ps2) = 100 OR POINT(ps1 + 2, ps2) = 100 THEN
Clearall
GOTO playagain
END IF
IF POINT(ps1 + 1, ps2) = 38 OR POINT(ps1 + 2, ps2) = 38 THEN GOTO circledraw
IF POINT(ps1 + 1, ps2) <> 67 AND POINT(ps1 + 2, ps2) <> 67 THEN
FOR n = 1 TO 2
PSET (ps1, ps2), 41
FOR n = 1 TO delay: NEXT
PSET (ps1, ps2), 113
ps1 = ps1 + 1
NEXT
END IF
GOTO inky
circledraw:
CIRCLE (34, 190), 2, 100, , , 1
PAINT (34, 190), 100, 100
GOTO inky
playagain:
CLS
Center 10, " Would you like to play again?"
Center 12, "1) Yes"
Center 13, "2) No"
INPUT choice
IF choice = 2 THEN END
IF choice = 1 THEN GOTO start
GOTO playagain
'               Ambush at South Range II is coming...

SUB Center (row, text$)
LOCATE row, 41 - LEN(text$) / 2
PRINT text$;
END SUB

SUB Clearall
SHARED place
SHARED begin
CLS
SCREEN 0
IF place = 1 THEN GOTO getrecords
PRINT "          Congratulations!"
PRINT
elapsedtime = TIMER - begin
PRINT "Finishing time: "; elapsedtime; " seconds."
owntime = elapsedtime
TIMER OFF
DO UNTIL INKEY$ <> "": LOOP
getrecords:
OPEN "fame.dat" FOR INPUT AS #1
INPUT #1, NAME1$, tim1
INPUT #1, NAME2$, tim2
INPUT #1, NAME3$, tim3
INPUT #1, NAME4$, tim4
INPUT #1, NAME5$, tim5
CLOSE #1
IF place = 1 THEN GOTO halloffame
IF owntime <= tim1 THEN d% = 5: GOTO NXT1
IF owntime < tim2 AND owntime > tim1 THEN d% = 4: GOTO NXT1
IF owntime < tim3 AND owntime > tim2 THEN d% = 3: GOTO NXT1
IF owntime < tim4 AND owntime > tim3 THEN d% = 2: GOTO NXT1
IF owntime < tim5 AND owntime > tim4 THEN d% = 1: GOTO NXT1
IF owntime >= tim5 THEN GOTO halloffame
NXT1:
INPUT "Yo- what is your name"; you$
IF d% = 1 THEN GOTO NXT
tim5 = tim4
NAME5$ = NAME4$
IF d% = 2 THEN GOTO NXT
tim4 = tim3
NAME4$ = NAME3$
IF d% = 3 THEN GOTO NXT
tim3 = tim2
NAME3$ = NAME2$
IF d% = 4 THEN GOTO NXT
tim2 = tim1
NAME2$ = NAME1$
NXT:
IF owntime <= tim1 THEN tim1 = owntime: NAME1$ = you$: GOTO halloffame
IF owntime < tim2 AND owntime >= tim1 THEN
tim2 = owntime: NAME2$ = you$: GOTO halloffame
END IF
IF owntime < tim3 AND owntime >= tim2 THEN
tim3 = owntime: NAME3$ = you$: GOTO halloffame
END IF
IF owntime < tim4 AND owntime >= tim3 THEN
tim4 = owntime: NAME4$ = you$: GOTO halloffame
END IF
IF owntime < tim5 AND owntime >= tim4 THEN
tim5 = owntime: NAME5$ = you$: GOTO halloffame
END IF

halloffame:
CLS
WIDTH 80
PRINT "                 Champion MAZE runners"
PRINT " "
PRINT "          Name                       Time"
PRINT " "
COLOR 13, 8
PRINT "#1.      "; NAME1$: LOCATE 5, 35: PRINT tim1; " seconds"
COLOR 7, 8
PRINT "#2.      "; NAME2$: LOCATE 6, 35: PRINT tim2; " seconds"
PRINT "#3.      "; NAME3$: LOCATE 7, 35: PRINT tim3; " seconds"
PRINT "#4.      "; NAME4$: LOCATE 8, 35: PRINT tim4; " seconds"
PRINT "#5.      "; NAME5$: LOCATE 9, 35: PRINT tim5; " seconds"
IF place = 1 THEN place = 0: EXIT SUB
OPEN "fame.dat" FOR OUTPUT AS #1
WRITE #1, NAME1$, tim1
WRITE #1, NAME2$, tim2
WRITE #1, NAME3$, tim3
WRITE #1, NAME4$, tim4
WRITE #1, NAME5$, tim5
CLOSE #1
DO UNTIL INKEY$ <> "": LOOP
END SUB

SUB Drawmaze
SHARED i
LINE (310, 5)-(10, 195), i, B
LINE (10, 190)-(10, 195), i
LINE (10, 195)-(30, 195), i
LINE (30, 195)-(30, 185), i
LINE (30, 185)-(40, 185), i
LINE (40, 185)-(40, 190), i
LINE (40, 190)-(50, 190), i
LINE (50, 195)-(100, 195), i
LINE (90, 190)-(60, 190), i
LINE (20, 190)-(20, 185), i
LINE (20, 185)-(10, 185), i
LINE (10, 190)-(20, 190), i
LINE (10, 185)-(10, 155), i
LINE (20, 160)-(20, 170), i
LINE (20, 170)-(30, 170), i
LINE (30, 170)-(30, 165), i
LINE (30, 165)-(50, 165), i
LINE (50, 160)-(20, 160), i
LINE (40, 160)-(40, 165), i
LINE (30, 175)-(20, 180), i, B
LINE (40, 175)-(40, 170), i
LINE (40, 170)-(50, 170), i
LINE (50, 175)-(50, 185), i
LINE (50, 175)-(40, 175), i
LINE (50, 185)-(60, 185), i
LINE (60, 185)-(60, 175), i
LINE (60, 175)-(70, 175), i
LINE (70, 175)-(70, 170), i
LINE (70, 170)-(60, 170), i
LINE (60, 165)-(70, 160), i, B
LINE (70, 180)-(70, 185), i
LINE (70, 185)-(90, 185), i
LINE (90, 185)-(90, 175), i
LINE (90, 175)-(80, 175), i
LINE (80, 175)-(80, 180), i
LINE (80, 180)-(70, 180), i
LINE (10, 155)-(20, 155), i
LINE (20, 155)-(20, 150), i
LINE (20, 150)-(10, 150), i
LINE (20, 145)-(20, 135), i
LINE (20, 135)-(10, 135), i
LINE (20, 125)-(30, 115), i, B
LINE (50, 155)-(30, 155), i
LINE (30, 155)-(30, 150), i
LINE (30, 150)-(40, 150), i
LINE (40, 150)-(40, 140), i
LINE (40, 140)-(50, 140), i
LINE (50, 140)-(50, 150), i
LINE (60, 145)-(70, 140), i, B
LINE (70, 150)-(60, 155), i, B
LINE (80, 160)-(80, 165), i
LINE (80, 165)-(90, 165), i
LINE (90, 165)-(90, 170), i
LINE (90, 170)-(80, 170), i
LINE (90, 160)-(80, 160), i
LINE (90, 160)-(90, 155), i
LINE (90, 155)-(80, 155), i
LINE (80, 155)-(80, 150), i
LINE (80, 145)-(80, 135), i
LINE (80, 135)-(30, 135), i
LINE (30, 135)-(30, 145), i
LINE (90, 140)-(90, 145), i
LINE (90, 145)-(100, 145), i
LINE (100, 140)-(100, 135), i
LINE (90, 130)-(120, 130), i
LINE (100, 130)-(100, 120), i
LINE (80, 130)-(80, 125), i
LINE (80, 125)-(90, 125), i
LINE (70, 135)-(70, 125), i
LINE (70, 125)-(60, 125), i
LINE (60, 125)-(60, 130), i
LINE (60, 130)-(30, 130), i
LINE (30, 130)-(30, 135), i
LINE (40, 125)-(50, 125), i
LINE (50, 125)-(50, 115), i
LINE (40, 110)-(30, 110), i
LINE (30, 110)-(30, 105), i
LINE (50, 110)-(70, 110), i
LINE (80, 110)-(80, 120), i
LINE (80, 120)-(90, 120), i
LINE (100, 110)-(100, 115), i
LINE (100, 115)-(110, 115), i
LINE (110, 120)-(110, 125), i
LINE (110, 125)-(120, 125), i
LINE (120, 125)-(120, 120), i
LINE (100, 165)-(100, 170), i
LINE (100, 170)-(130, 170), i
LINE (130, 170)-(130, 165), i
LINE (120, 165)-(100, 165), i
LINE (100, 175)-(100, 180), i
LINE (100, 180)-(120, 180), i
LINE (120, 180)-(120, 185), i
LINE (120, 185)-(130, 185), i
LINE (130, 185)-(130, 175), i
LINE (130, 175)-(100, 175), i
LINE (140, 185)-(100, 185), i
LINE (60, 190)-(50, 190), i
LINE (140, 185)-(140, 180), i
LINE (140, 175)-(140, 170), i
LINE (140, 170)-(150, 170), i
LINE (150, 175)-(150, 180), i
LINE (150, 180)-(160, 180), i
LINE (160, 180)-(160, 175), i
LINE (160, 170)-(180, 170), i
LINE (180, 170)-(180, 165), i
LINE (170, 165)-(170, 170), i
LINE (170, 165)-(150, 165), i
LINE (100, 160)-(100, 150), i
LINE (100, 150)-(110, 150), i
LINE (110, 150)-(110, 145), i
LINE (110, 145)-(120, 145), i
LINE (100, 160)-(110, 160), i
LINE (110, 160)-(110, 155), i
LINE (110, 155)-(120, 155), i
LINE (120, 155)-(120, 160), i
LINE (130, 155)-(130, 145), i
LINE (140, 150)-(140, 155), i
LINE (140, 150)-(150, 150), i
LINE (150, 150)-(150, 145), i
LINE (150, 140)-(160, 135), i, B
LINE (140, 140)-(130, 140), i
LINE (130, 135)-(130, 130), i
LINE (140, 130)-(140, 135), i
LINE (140, 130)-(150, 130), i
LINE (160, 130)-(160, 120), i
LINE (150, 125)-(160, 125), i
LINE (140, 120)-(130, 120), i
LINE (130, 125)-(130, 115), i
LINE (140, 115)-(140, 120), i
LINE (140, 115)-(150, 115), i
LINE (130, 110)-(120, 110), i
LINE (120, 135)-(120, 140), i
LINE (120, 135)-(110, 135), i
LINE (160, 145)-(170, 145), i
LINE (170, 140)-(170, 135), i
LINE (180, 135)-(180, 140), i
LINE (180, 140)-(190, 140), i
LINE (170, 150)-(180, 150), i
LINE (160, 150)-(160, 155), i
LINE (160, 155)-(150, 155), i
LINE (160, 160)-(140, 160), i
LINE (140, 160)-(140, 165), i
LINE (180, 160)-(190, 160), i
LINE (190, 160)-(190, 165), i
LINE (190, 165)-(200, 165), i
LINE (200, 165)-(200, 160), i
LINE (200, 160)-(210, 160), i
LINE (210, 160)-(210, 165), i
LINE (190, 170)-(220, 170), i
LINE (190, 170)-(190, 175), i
LINE (200, 175)-(200, 170), i
LINE (210, 170)-(210, 175), i
LINE (220, 170)-(220, 165), i
LINE (220, 175)-(230, 175), i
LINE (230, 175)-(230, 180), i
LINE (230, 180)-(240, 180), i
LINE (200, 180)-(220, 180), i
LINE (220, 180)-(220, 185), i
LINE (210, 185)-(210, 190), i
LINE (210, 185)-(200, 185), i
LINE (190, 185)-(190, 190), i
LINE (190, 185)-(170, 185), i
LINE (180, 185)-(180, 190), i
LINE (160, 190)-(160, 185), i
LINE (160, 185)-(150, 185), i
LINE (230, 185)-(230, 190), i
LINE (230, 190)-(240, 190), i
LINE (250, 190)-(250, 180), i
LINE (260, 185)-(260, 190), i
LINE (260, 190)-(250, 190), i
LINE (260, 185)-(270, 185), i
LINE (280, 190)-(290, 190), i
LINE (280, 180)-(280, 185), i
LINE (280, 185)-(300, 185), i
LINE (300, 185)-(300, 190), i
LINE (290, 180)-(300, 180), i
LINE (300, 175)-(300, 170), i
LINE (300, 170)-(290, 170), i
LINE (290, 170)-(290, 175), i
LINE (280, 175)-(280, 170), i
LINE (260, 170)-(260, 175), i
LINE (260, 175)-(240, 175), i
LINE (240, 170)-(230, 170), i
LINE (230, 170)-(230, 165), i
LINE (230, 155)-(230, 160), i
LINE (220, 160)-(220, 155), i
LINE (220, 150)-(230, 150), i
LINE (210, 150)-(200, 155), i, B
LINE (200, 145)-(191, 145), i
LINE (190, 150)-(190, 155), i
LINE (250, 165)-(270, 165), i
LINE (260, 160)-(250, 160), i
LINE (250, 155)-(260, 155), i
LINE (250, 155)-(250, 165), i
LINE (270, 155)-(270, 150), i
LINE (280, 150)-(290, 150), i
LINE (290, 150)-(290, 155), i
LINE (280, 155)-(280, 150), i
LINE (280, 160)-(280, 165), i
LINE (290, 165)-(300, 165), i
LINE (300, 160)-(290, 160), i
LINE (290, 160)-(290, 165), i
LINE (280, 145)-(290, 145), i
LINE (290, 140)-(280, 140), i
LINE (300, 145)-(300, 135), i
LINE (300, 135)-(290, 135), i
LINE (290, 135)-(290, 130), i
LINE (290, 130)-(280, 130), i
LINE (280, 130)-(280, 135), i
LINE (280, 135)-(270, 135), i
LINE (270, 130)-(260, 130), i
LINE (260, 130)-(260, 125), i
LINE (260, 125)-(250, 125), i
LINE (250, 125)-(250, 120), i
LINE (240, 120)-(240, 130), i
LINE (240, 130)-(250, 130), i
LINE (250, 135)-(250, 140), i
LINE (250, 140)-(240, 140), i
LINE (240, 140)-(240, 135), i
LINE (240, 135)-(230, 135), i
LINE (220, 135)-(210, 140), i, B
LINE (220, 130)-(220, 125), i
LINE (220, 130)-(230, 130), i
LINE (230, 125)-(230, 120), i
LINE (220, 120)-(210, 120), i
LINE (210, 115)-(210, 110), i
LINE (210, 115)-(200, 115), i
LINE (220, 110)-(220, 105), i
LINE (220, 105)-(230, 105), i
LINE (230, 115)-(230, 110), i
LINE (230, 110)-(240, 110), i
LINE (210, 105)-(190, 105), i
LINE (190, 105)-(190, 110), i
LINE (170, 110)-(170, 105), i
LINE (170, 115)-(180, 115), i
LINE (180, 120)-(190, 120), i
LINE (180, 125)-(170, 125), i
LINE (190, 130)-(190, 135), i
LINE (190, 130)-(200, 130), i
LINE (280, 120)-(280, 115), i
LINE (240, 145)-(240, 150), i
LINE (240, 150)-(250, 150), i
LINE (40, 95)-(40, 90), i
LINE (40, 95)-(50, 95), i
LINE (70, 95)-(70, 90), i
LINE (70, 100)-(80, 100), i
LINE (160, 100)-(160, 95), i
LINE (170, 175)-(170, 180), i
LINE (170, 180)-(180, 180), i
LINE (230, 140)-(230, 145), i
LINE (230, 145)-(240, 145), i
LINE (210, 120)-(210, 125), i
LINE (210, 125)-(200, 125), i
LINE (200, 125)-(200, 120), i
LINE (210, 115)-(220, 115), i
LINE (190, 105)-(180, 105), i
LINE (180, 105)-(180, 110), i
LINE (270, 185)-(280, 185), i
LINE (260, 180)-(291, 180), i
LINE (270, 180)-(270, 175), i
LINE (240, 160)-(240, 165), i
LINE (300, 125)-(300, 135), i
LINE (300, 125)-(280, 125), i
LINE (280, 120)-(290, 120), i
LINE (280, 115)-(280, 105), i
LINE (290, 105)-(270, 105), i
LINE (270, 105)-(270, 100), i
LINE (270, 100)-(280, 100), i
LINE (280, 100)-(280, 90), i
LINE (270, 90)-(290, 90), i
LINE (290, 90)-(290, 80), i
LINE (280, 80)-(280, 85), i
LINE (270, 80)-(270, 90), i
LINE (260, 135)-(260, 145), i
LINE (260, 145)-(270, 145), i
LINE (260, 85)-(260, 90), i
LINE (260, 85)-(250, 85), i
LINE (250, 80)-(250, 90), i
LINE (250, 80)-(240, 80), i
LINE (150, 115)-(150, 120), i
LINE (150, 115)-(160, 115), i
LINE (130, 125)-(140, 125), i
LINE (150, 110)-(170, 110), i
LINE (160, 110)-(160, 105), i
LINE (160, 105)-(140, 105), i
LINE (140, 105)-(140, 100), i
LINE (150, 100)-(160, 100), i
LINE (160, 95)-(150, 95), i
LINE (150, 95)-(150, 90), i
LINE (240, 85)-(230, 85), i
LINE (230, 85)-(230, 90), i
LINE (230, 90)-(220, 90), i
LINE (220, 85)-(220, 100), i
LINE (220, 100)-(210, 100), i
LINE (210, 100)-(210, 95), i
LINE (210, 95)-(200, 95), i
LINE (200, 90)-(200, 100), i
LINE (190, 100)-(190, 90), i
LINE (190, 90)-(200, 90), i
LINE (190, 85)-(220, 85), i
LINE (210, 90)-(210, 85), i
LINE (200, 85)-(200, 80), i
LINE (200, 80)-(210, 80), i
LINE (220, 80)-(220, 75), i
LINE (210, 75)-(240, 75), i
LINE (230, 75)-(230, 80), i
LINE (240, 75)-(240, 70), i
LINE (240, 70)-(230, 70), i
LINE (250, 70)-(250, 75), i
LINE (250, 75)-(260, 75), i
LINE (260, 80)-(260, 65), i
LINE (270, 95)-(260, 95), i
LINE (260, 95)-(260, 100), i
LINE (260, 100)-(250, 100), i
LINE (250, 105)-(250, 115), i
LINE (250, 115)-(240, 115), i
LINE (240, 115)-(240, 110), i
LINE (250, 110)-(260, 110), i
LINE (260, 110)-(260, 115), i
LINE (260, 115)-(270, 115), i
LINE (270, 110)-(270, 125), i
LINE (270, 120)-(260, 120), i
LINE (170, 100)-(180, 100), i
LINE (180, 100)-(180, 95), i
LINE (180, 95)-(170, 95), i
LINE (170, 90)-(180, 90), i
LINE (180, 85)-(180, 80), i
LINE (180, 80)-(170, 80), i
LINE (170, 80)-(170, 85), i
LINE (160, 85)-(160, 80), i
LINE (160, 75)-(150, 75), i
LINE (150, 75)-(150, 70), i
LINE (160, 70)-(160, 75), i
LINE (160, 70)-(170, 70), i
LINE (140, 90)-(130, 90), i
LINE (120, 95)-(120, 90), i
LINE (120, 90)-(110, 90), i
LINE (110, 95)-(100, 95), i
LINE (100, 95)-(100, 90), i
LINE (100, 100)-(120, 100), i
LINE (110, 100)-(110, 105), i
LINE (110, 105)-(100, 105), i
LINE (120, 105)-(130, 105), i
LINE (90, 105)-(70, 105), i
LINE (80, 105)-(80, 112), i
LINE (80, 100)-(90, 100), i
LINE (90, 100)-(90, 95), i
LINE (80, 95)-(60, 95), i
LINE (160, 60)-(160, 55), i
LINE (170, 155)-(170, 150), i
LINE (210, 165)-(240, 165), i
LINE (240, 160)-(230, 160), i
LINE (220, 155)-(240, 155), i
LINE (240, 155)-(240, 150), i
LINE (240, 175)-(240, 170), i
LINE (250, 170)-(250, 164), i
LINE (250, 170)-(260, 170), i
LINE (270, 170)-(270, 165), i
LINE (270, 170)-(280, 170), i
LINE (240, 185)-(230, 185), i
LINE (190, 180)-(180, 180), i
LINE (180, 180)-(180, 175), i
LINE (170, 175)-(161, 175), i
LINE (150, 150)-(150, 155), i
LINE (140, 150)-(140, 145), i
LINE (120, 145)-(120, 150), i
LINE (90, 150)-(80, 150), i
LINE (80, 135)-(80, 130), i
LINE (80, 135)-(90, 135), i
LINE (110, 115)-(110, 110), i
LINE (100, 110)-(90, 110), i
LINE (90, 110)-(90, 115), i
LINE (60, 110)-(60, 105), i
LINE (50, 105)-(50, 100), i
LINE (50, 100)-(40, 100), i
LINE (30, 130)-(20, 130), i
LINE (20, 130)-(20, 125), i
LINE (30, 120)-(40, 120), i
LINE (40, 120)-(40, 115), i
LINE (20, 115)-(20, 95), i
LINE (20, 95)-(30, 95), i
LINE (30, 95)-(30, 105), i
LINE (30, 95)-(41, 95), i
LINE (10, 90)-(30, 90), i
LINE (30, 90)-(30, 85), i
LINE (50, 90)-(60, 90), i
LINE (60, 90)-(60, 85), i
LINE (60, 85)-(80, 85), i
LINE (80, 85)-(80, 90), i
LINE (80, 90)-(90, 90), i
LINE (70, 80)-(60, 80), i
LINE (60, 80)-(60, 70), i
LINE (60, 70)-(40, 70), i
LINE (40, 70)-(40, 80), i
LINE (30, 80)-(50, 80), i
LINE (50, 80)-(50, 85), i
LINE (50, 85)-(40, 85), i
LINE (120, 110)-(120, 105), i
LINE (140, 115)-(140, 110), i
LINE (140, 110)-(150, 110), i
LINE (200, 110)-(200, 105), i
LINE (240, 90)-(240, 95), i
LINE (230, 95)-(250, 95), i
LINE (240, 100)-(240, 105), i
LINE (240, 100)-(230, 100), i
LINE (130, 90)-(130, 100), i
LINE (130, 85)-(120, 85), i
LINE (120, 80)-(130, 80), i
LINE (130, 75)-(130, 70), i
LINE (130, 75)-(140, 75), i
LINE (150, 70)-(150, 65), i
LINE (150, 70)-(140, 70), i
LINE (140, 65)-(140, 60), i
LINE (140, 60)-(150, 60), i
LINE (120, 75)-(100, 75), i
LINE (100, 70)-(110, 70), i
LINE (110, 70)-(110, 75), i
LINE (120, 70)-(120, 65), i
LINE (120, 65)-(110, 65), i
LINE (110, 65)-(110, 55), i
LINE (110, 60)-(120, 60), i
LINE (130, 60)-(130, 65), i
LINE (100, 65)-(100, 60), i
LINE (100, 60)-(90, 60), i
LINE (90, 60)-(90, 50), i
LINE (90, 50)-(80, 50), i
LINE (80, 50)-(80, 55), i
LINE (90, 55)-(100, 55), i
LINE (80, 60)-(80, 65), i
LINE (80, 65)-(90, 65), i
LINE (90, 65)-(90, 75), i
LINE (90, 70)-(80, 70), i
LINE (80, 70)-(80, 80), i
LINE (80, 80)-(90, 80), i
LINE (80, 75)-(50, 75), i
LINE (80, 60)-(60, 60), i
LINE (70, 50)-(70, 60), i
LINE (70, 50)-(70, 45), i
LINE (70, 50)-(60, 50), i
LINE (70, 45)-(90, 45), i
LINE (80, 45)-(80, 35), i
LINE (90, 40)-(90, 45), i
LINE (90, 40)-(110, 40), i
LINE (100, 40)-(100, 35), i
LINE (100, 35)-(90, 35), i
LINE (90, 35)-(90, 30), i
LINE (90, 30)-(70, 30), i
LINE (90, 45)-(90, 44), i
LINE (100, 80)-(110, 80), i
LINE (110, 80)-(110, 85), i
LINE (290, 95)-(290, 100), i
LINE (290, 95)-(300, 95), i
LINE (300, 190)-(300, 10), i
LINE (290, 115)-(290, 110), i
LINE (290, 110)-(300, 110), i
LINE (260, 120)-(260, 125), i
LINE (270, 120)-(283, 120), i
LINE (270, 140)-(270, 145), i
LINE (280, 145)-(280, 140), i
LINE (260, 150)-(270, 150), i
LINE (270, 150)-(270, 160), i
LINE (270, 160)-(280, 160), i
LINE (290, 75)-(280, 75), i
LINE (280, 75)-(280, 70), i
LINE (280, 70)-(290, 70), i
LINE (290, 70)-(290, 65), i
LINE (290, 65)-(300, 65), i
LINE (270, 80)-(260, 80), i
LINE (260, 75)-(270, 75), i
LINE (270, 75)-(270, 60), i
LINE (270, 60)-(290, 60), i
LINE (280, 65)-(270, 65), i
LINE (290, 60)-(290, 55), i
LINE (290, 55)-(280, 55), i
LINE (280, 55)-(280, 50), i
LINE (280, 50)-(240, 50), i
LINE (270, 50)-(270, 55), i
LINE (260, 50)-(260, 40), i
LINE (260, 40)-(250, 40), i
LINE (250, 40)-(250, 45), i
LINE (250, 45)-(240, 45), i
LINE (260, 45)-(280, 45), i
LINE (270, 45)-(270, 30), i
LINE (270, 30)-(300, 30), i
LINE (290, 30)-(290, 25), i
LINE (240, 40)-(240, 35), i
LINE (240, 35)-(260, 35), i
LINE (260, 35)-(260, 25), i
LINE (250, 30)-(250, 35), i
LINE (250, 30)-(240, 30), i
LINE (260, 55)-(260, 65), i
LINE (260, 55)-(250, 55), i
LINE (250, 60)-(240, 60), i
LINE (240, 60)-(240, 55), i
LINE (250, 70)-(250, 65), i
LINE (250, 65)-(230, 65), i
LINE (230, 65)-(230, 55), i
LINE (230, 70)-(220, 70), i
LINE (220, 70)-(220, 65), i
LINE (210, 70)-(210, 75), i
LINE (230, 55)-(220, 55), i
LINE (220, 55)-(220, 50), i
LINE (230, 50)-(210, 50), i
LINE (210, 50)-(210, 55), i
LINE (230, 50)-(230, 45), i
LINE (220, 45)-(210, 45), i
LINE (220, 45)-(220, 40), i
LINE (210, 40)-(230, 40), i
LINE (200, 140)-(200, 135), i
LINE (200, 135)-(210, 135), i
LINE (210, 135)-(210, 130), i
LINE (220, 135)-(230, 135), i
LINE (230, 135)-(230, 130), i
LINE (220, 140)-(230, 140), i
LINE (150, 80)-(140, 80), i
LINE (140, 80)-(140, 85), i
LINE (140, 85)-(150, 85), i
LINE (150, 85)-(150, 91), i
LINE (150, 95)-(140, 95), i
LINE (160, 95)-(160, 84), i
LINE (160, 75)-(170, 75), i
LINE (140, 55)-(120, 55), i
LINE (120, 55)-(120, 50), i
LINE (130, 50)-(140, 50), i
LINE (140, 50)-(140, 55), i
LINE (150, 55)-(150, 50), i
LINE (150, 50)-(160, 50), i
LINE (160, 55)-(180, 55), i
LINE (180, 55)-(180, 60), i
LINE (180, 60)-(170, 60), i
LINE (170, 60)-(170, 65), i
LINE (170, 65)-(160, 65), i
LINE (170, 50)-(180, 50), i
LINE (180, 45)-(180, 40), i
LINE (180, 45)-(170, 45), i
LINE (160, 45)-(160, 40), i
LINE (160, 40)-(170, 40), i
LINE (160, 45)-(150, 45), i
LINE (150, 45)-(150, 40), i
LINE (140, 40)-(140, 45), i
LINE (140, 45)-(130, 45), i
LINE (120, 40)-(130, 40), i
LINE (130, 40)-(130, 30), i
LINE (120, 45)-(110, 45), i
LINE (110, 45)-(110, 50), i
LINE (110, 50)-(100, 50), i
LINE (100, 50)-(100, 45), i
LINE (190, 45)-(190, 55), i
LINE (190, 50)-(200, 50), i
LINE (200, 50)-(200, 45), i
LINE (200, 55)-(200, 60), i
LINE (190, 60)-(200, 60), i
LINE (210, 60)-(220, 60), i
LINE (200, 65)-(210, 65), i
LINE (190, 65)-(190, 70), i
LINE (190, 70)-(200, 70), i
LINE (200, 70)-(200, 75), i
LINE (240, 120)-(230, 120), i
LINE (230, 120)-(230, 115), i
LINE (220, 125)-(220, 115), i
LINE (220, 115)-(230, 115), i
LINE (250, 145)-(250, 150), i
LINE (170, 120)-(170, 115), i
LINE (190, 120)-(190, 115), i
LINE (190, 125)-(178, 125), i
LINE (170, 125)-(170, 130), i
LINE (170, 130)-(180, 130), i
LINE (190, 80)-(190, 75), i
LINE (190, 75)-(180, 75), i
LINE (180, 70)-(180, 65), i
LINE (70, 70)-(70, 75), i
LINE (50, 70)-(50, 65), i
LINE (50, 65)-(70, 65), i
LINE (50, 60)-(50, 55), i
LINE (50, 55)-(40, 55), i
LINE (30, 55)-(30, 60), i
LINE (30, 60)-(40, 60), i
LINE (40, 60)-(40, 65), i
LINE (30, 65)-(20, 65), i
LINE (20, 85)-(20, 80), i
LINE (20, 75)-(30, 75), i
LINE (30, 75)-(30, 70), i
LINE (30, 50)-(50, 50), i
LINE (40, 50)-(40, 45), i
LINE (30, 45)-(30, 50), i
LINE (50, 45)-(60, 45), i
LINE (60, 45)-(60, 40), i
LINE (60, 40)-(70, 40), i
LINE (70, 40)-(70, 35), i
LINE (70, 35)-(50, 35), i
LINE (50, 35)-(50, 40), i
LINE (50, 40)-(40, 40), i
LINE (60, 35)-(60, 25), i
LINE (60, 25)-(50, 25), i
LINE (50, 25)-(50, 30), i
LINE (50, 30)-(40, 30), i
LINE (40, 30)-(40, 25), i
LINE (40, 25)-(30, 25), i
LINE (30, 25)-(30, 35), i
LINE (30, 35)-(30, 40), i
LINE (40, 30)-(40, 35), i
LINE (40, 35)-(30, 35), i
LINE (30, 40)-(10, 40), i
LINE (20, 35)-(20, 10), i
LINE (20, 10)-(80, 10), i
LINE (90, 10)-(300, 10), i
LINE (20, 40)-(20, 70), i
LINE (110, 35)-(110, 25), i
LINE (110, 30)-(100, 30), i
LINE (110, 35)-(120, 35), i
LINE (120, 30)-(120, 25), i
LINE (80, 10)-(80, 15), i
LINE (80, 15)-(60, 15), i
LINE (60, 15)-(60, 20), i
LINE (60, 20)-(90, 20), i
LINE (90, 20)-(90, 10), i
LINE (60, 20)-(50, 20), i
LINE (50, 20)-(50, 15), i
LINE (50, 15)-(40, 15), i
LINE (40, 15)-(40, 20), i
LINE (20, 20)-(30, 15), i, B
LINE (100, 20)-(100, 15), i
LINE (100, 15)-(110, 15), i
LINE (100, 25)-(90, 25), i
LINE (90, 25)-(90, 20), i
LINE (80, 20)-(80, 25), i
LINE (80, 25)-(70, 25), i
LINE (70, 25)-(70, 30), i
LINE (110, 20)-(120, 20), i
LINE (120, 20)-(120, 15), i
LINE (130, 15)-(130, 20), i
LINE (140, 20)-(140, 15), i
LINE (140, 15)-(150, 15), i
LINE (130, 25)-(150, 25), i
LINE (150, 25)-(150, 20), i
LINE (160, 20)-(160, 25), i
LINE (150, 30)-(140, 30), i
LINE (140, 30)-(140, 35), i
LINE (150, 35)-(160, 35), i
LINE (160, 35)-(160, 30), i
LINE (170, 30)-(170, 35), i
LINE (170, 25)-(180, 25), i
LINE (180, 20)-(180, 10), i
LINE (180, 20)-(170, 20), i
LINE (190, 15)-(190, 10), i
LINE (190, 20)-(190, 25), i
LINE (190, 25)-(200, 25), i
LINE (200, 25)-(200, 20), i
LINE (200, 20)-(210, 20), i
LINE (210, 20)-(210, 25), i
LINE (200, 30)-(180, 30), i
LINE (180, 30)-(180, 35), i
LINE (190, 35)-(190, 40), i
LINE (190, 40)-(200, 40), i
LINE (200, 40)-(200, 35), i
LINE (200, 35)-(210, 35), i
LINE (200, 15)-(200, 10), i
LINE (200, 15)-(210, 15), i
LINE (220, 15)-(250, 15), i
LINE (260, 15)-(260, 10), i
LINE (270, 10)-(270, 15), i
LINE (280, 15)-(280, 10), i
LINE (290, 15)-(300, 15), i
LINE (290, 20)-(280, 20), i
LINE (280, 20)-(280, 25), i
LINE (280, 25)-(270, 25), i
LINE (270, 25)-(270, 20), i
LINE (270, 20)-(260, 20), i
LINE (250, 20)-(250, 25), i
LINE (240, 25)-(230, 25), i
LINE (230, 25)-(230, 20), i
LINE (230, 20)-(240, 20), i
LINE (230, 30)-(230, 35), i
LINE (230, 35)-(220, 35), i
LINE (220, 30)-(210, 30), i
LINE (220, 25)-(220, 20), i
LINE (170, 15)-(160, 15), i
LINE (90, 190)-(300, 190), i
COLOR 38: LOCATE 6, 37: PRINT "$"


END SUB

SUB Logo
SCREEN 13
switcher = 1
CLS
FOR time = 1 TO 4
IF time = 1 THEN
a = 316
B = 1
c = 1
d = 1
END IF
IF time = 2 THEN
a = 316
B = 196
c = 316
d = 1
END IF
IF time = 3 THEN
a = 316
B = 196
c = 1
d = 196
END IF
IF time = 4 THEN
a = 316
B = 1
c = 1
d = 196
END IF
y = 0
i = 1
FOR it = 64 TO 127 STEP .7
IF time = 1 THEN PALETTE i, 65536 * i + i
IF time = 2 THEN PALETTE i, 256 * i
IF time = 3 THEN PALETTE i, 65536 * i
IF time = 4 THEN PALETTE i, 65536 * i
IF time <> 4 THEN LINE (a, B)-(c, d), i
IF time = 4 THEN LINE (a, B)-(c, d), i, B
IF time = 4 THEN
IF switcher = 2 THEN switcher = 3: GOTO adsa
IF switcher = 2 THEN i = i + 1: switcher = 1
IF switcher = 1 THEN switcher = 8
adsa:
END IF
IF time <> 4 THEN i = i + 1
IF i = 63 THEN i = 1: GOTO break
low = low + 1
IF time = 1 THEN
B = B + 1
d = d + 1
END IF
IF time = 2 THEN
a = a - 1
c = c - 1
END IF
IF time = 3 THEN
B = B - 1
d = d - 1
END IF
IF time = 4 THEN
a = a - 1
B = B + 1
c = c + 1
d = d - 1
END IF
NEXT
break:
NEXT
CLS
y = 1
FOR it = 64 TO 115
PALETTE i, y
y = y + 1
lukevar1 = 315
lukevar2 = 296
aaaa = 200
bbbb = 296
LINE (aaaa - 46, bbbb - 162)-(aaaa - 46, bbbb - 233), i
LINE (aaaa - 46, bbbb - 233)-(aaaa - 36, bbbb - 233), i
LINE (aaaa - 37, bbbb - 233)-(aaaa - 7, bbbb - 203), i
LINE (aaaa - 37, bbbb - 223)-(aaaa - 7, bbbb - 193), i
LINE (aaaa - 37, bbbb - 223)-(aaaa - 37, bbbb - 162), i
LINE (aaaa - 37, bbbb - 162)-(aaaa - 46, bbbb - 162), i
LINE (aaaa - 7, bbbb - 203)-(aaaa - 0, bbbb - 203), i
LINE (aaaa - 7, bbbb - 193)-(aaaa - 0, bbbb - 193), i
LINE (aaaa - 0, bbbb - 193)-(aaaa + 30, bbbb - 223), i
LINE (aaaa - 0, bbbb - 203)-(aaaa + 30, bbbb - 233), i
LINE (aaaa + 30, bbbb - 233)-(aaaa + 39, bbbb - 233), i
LINE (aaaa + 39, bbbb - 233)-(aaaa + 39, bbbb - 162), i
LINE (aaaa + 39, bbbb - 162)-(aaaa + 30, bbbb - 162), i
LINE (aaaa + 30, bbbb - 162)-(aaaa + 30, bbbb - 223), i
LINE (lukevar1 - 242, lukevar2 - 162)-(lukevar1 - 242, lukevar2 - 233), i
LINE (lukevar1 - 242, lukevar2 - 233)-(lukevar1 - 233, lukevar2 - 233), i
LINE (lukevar1 - 233, lukevar2 - 171)-(lukevar1 - 233, lukevar2 - 233), i
LINE (lukevar1 - 233, lukevar2 - 171)-(lukevar1 - 193, lukevar2 - 171), i
LINE (lukevar1 - 193, lukevar2 - 171)-(lukevar1 - 193, lukevar2 - 162), i
LINE (lukevar1 - 193, lukevar2 - 162)-(lukevar1 - 242, lukevar2 - 162), i
CIRCLE (137, 135), 3, i, , , 1
CIRCLE (250, 135), 3, i, , , 1
PAINT (160, 100), i, i
PAINT (75, 100), i, i
PAINT (138, 135), i, i
PAINT (251, 135), i, i
LOCATE 20, 11
COLOR i
PRINT "Copyright 1994-1995"
LOCATE 5, 9: PRINT "Luke Molnar Enterprises"
NEXT
DO UNTIL INKEY$ <> "": LOOP
END SUB


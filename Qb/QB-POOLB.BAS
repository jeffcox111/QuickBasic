






'IMPORTANT!  READ ALL OF THIS BEFORE PLAYING!

'----------------------------------------------------------------------------'
'     A SoundBlaster or Adlib compatible sound card is highly recomended!    '
'             The program will need QBASIC to run (of course!)               '
'        You will also need a 256-Color Monitor (SVGA is recomended)         '
'       You can press Esc at any time during play to exit the program!       '
'Thanks to AdamS60982-his file, SOUND-B.BAS helped me greatly in these sounds'
'----------------------------------------------------------------------------'






DEFINT A-Z
DECLARE SUB drawtable ()
DECLARE SUB triesareup ()
DECLARE SUB ping ()
DECLARE SUB gamenumber ()
DECLARE SUB rules ()
DECLARE SUB exitprogram ()
DECLARE SUB gethighscore ()
DECLARE SUB puthighscore ()
DECLARE SUB status ()
DECLARE SUB soundoptions ()
DECLARE FUNCTION DetectCard% ()
DECLARE SUB SBInit ()
DECLARE SUB WriteReg (Reg%, Value%)
DECLARE SUB SBPlay (note%)
DIM SHARED soundcard$, sounds$, tries%, limitoftries%, score%, highscore%, name$, game%
CONST false = 0, true = NOT false
sounds$ = "YES"'YES"
soundcard$ = "YES"'"YES"
BH% = 60: BV% = 60
BH1% = 250: BV1% = 100
BH2% = 110: BV2% = 140
tries% = 0: limitoftries% = 10 'difficulty - the higher, the easier
highscore% = 600: name$ = "Noah"
DEF SEG = 0
KeyFlags = PEEK(1047)
IF (KeyFlags AND 32) = 0 THEN
POKE 1047, KeyFlags OR 32
END IF
CALL soundoptions
CALL rules
78 CALL puthighscore
SCREEN 0: CLS
IF DetectCard = true THEN
GOTO 15
ELSE soundcard$ = "NO": GOTO 15
END IF
15 SBInit
FOR nt = 0 TO 355'255
NEXT nt
FOR maindelay% = 0 TO 5 STEP 1
FOR delay% = 0 TO 32766 STEP 1: NEXT delay%
NEXT maindelay%
CALL WriteReg(&HB0, &H0) 'Makes sure no extra sound is left playing
skipsound: CLS : SCREEN 13: SLEEP 1
f2% = 0: it% = 31
score% = 0: tries% = 0
b1tob2$ = "NO": b2tob1$ = "NO"
FOR i2% = b2% + 16 TO b2% + 159
FOR a2% = f2% TO e2%
NEXT a2%
LINE (0, i2%)-(320, h%), i2%
i2% = i2% + 1
SBPlay nt
nt = nt + 2
LINE (0, i2% - er%)-(320, I% - er%), 0
NEXT i2%
B% = B% + 10: at% = 0: w% = 0
CALL WriteReg(&HB0, &H0) 'Makes sure no extra sound is left playing
3 IF w% < 20000 THEN w% = w% + 1: GOTO 3
LOCATE 14, 23: COLOR 15: PRINT "  QB-Pool  "
LOCATE 16, 22: COLOR 4: PRINT "By Noah Daleo"
w% = 0
66 IF w% < 10000 THEN w% = w% + 1: GOTO 66
5 LOCATE 14, 23: COLOR it%: PRINT "  QB-Pool  "
LOCATE 16, 22: COLOR 4: PRINT "By Noah Daleo"
w% = 0
IF INKEY$ <> "" AND INKEY$ <> CHR$(27) THEN GOTO 87
IF INKEY$ = CHR$(27) THEN CALL exitprogram
IF it% = 15 THEN
w% = 0
77 IF w% < 15000 THEN w% = w% + 1: GOTO 77
END IF
44 IF w% < 5000 THEN w% = w% + 1: GOTO 44
IF it% > 15 THEN it% = it% - 1: GOTO 5
IF it% < 16 THEN it% = 31: GOTO 5
87 CALL gamenumber
88 CLS : SCREEN 13: SLEEP 1: PAINT (1, 1), 8
56 SELECT CASE game%
CASE IS = 1
BH% = 100: BV% = 100
BH1% = 200: BV1% = 100
BH2% = 210: BV2% = 110
CASE IS = 2
BH% = 60: BV% = 60
BH1% = 250: BV1% = 100
BH2% = 110: BV2% = 140
CASE IS = 3
BH% = 200: BV% = 100
BH1% = 100: BV1% = 80
BH2% = 100: BV2% = 120
CASE IS = 4
BH% = 160: BV% = 100
BH1% = 125: BV1% = 75
BH2% = 195: BV2% = 125
CASE IS = 5
BH% = 150: BV% = 60
BH1% = 250: BV1% = 100
BH2% = 110: BV2% = 70
CASE IS = 0
RANDOMIZE TIMER
game% = INT(RND * 4) + 1
GOTO 56
END SELECT
DIR$ = "NONE": SPEED2% = 0
SPEED2A% = 0: SPEED22% = 0: SPEED12% = 0
DIR1$ = "NONE": DIR2$ = "NONE"
STARTDECEL% = 1: STARTDECEL1% = 1: STARTDECEL2% = 1
101 IF BH% > BH1% - 8 AND BH% < BH1% + 8 AND BV% > BV1% - 8 AND BV% < BV1% + 8 THEN CALL ping: SPEED12% = SPEED2%: DIR1$ = DIR$
IF BH% > BH1% - 8 AND BH% < BH1% + 8 AND BV% > BV1% - 8 AND BV% < BV1% + 8 AND BH1% < 260 THEN BH1% = BH1% + 1
IF BH% > BH1% - 8 AND BH% < BH1% + 8 AND BV% > BV1% - 8 AND BV% < BV1% + 8 AND BH1% > 259 THEN BH% = BH% - 1
DIR1$ = "NONE": DIR2$ = "NONE"
LINE (BH% - 20, BV% - 20)-(BH% + 20, BV% + 20), 8, BF
LINE (BH1% - 20, BV1% - 20)-(BH1% + 20, BV1% + 20), 8, BF
LINE (BH2% - 20, BV2% - 20)-(BH2% + 20, BV2% + 20), 8, BF
CALL drawtable
10 LINE (BH% - 20, BV% - 20)-(BH% + 20, BV% + 20), 8, BF
LINE (BH1% - 20, BV1% - 20)-(BH1% + 20, BV1% + 20), 8, BF
LINE (BH2% - 20, BV2% - 20)-(BH2% + 20, BV2% + 20), 8, BF
CALL drawtable
SPEED2% = 0
DO: b1tob2$ = "NO": b2tob1$ = "NO"
IF tries% >= limitoftries% THEN CALL triesareup: GOTO 78
CIRCLE (BH%, BV%), 5, 0
PAINT (BH%, BV%), 15, 0
CIRCLE (BH1%, BV1%), 5, 0
PAINT (BH1%, BV1%), 4, 0
CIRCLE (BH2%, BV2%), 5, 0
PAINT (BH2%, BV2%), 4, 0
SELECT CASE INKEY$
CASE IS = " "
IF DIR$ <> "NONE" THEN tries% = tries% + 1
GOSUB table: GOTO 6
CASE IS = CHR$(27)
CALL exitprogram
CASE IS = "p"
GOTO 75
CASE IS = "P"
75 SELECT CASE INKEY$
CASE IS = "U"
GOTO 76
CASE IS = "u"
GOTO 76
CASE ELSE
GOTO 75
END SELECT
76 CASE IS = CHR$(0) + "M"
LINE (BH% - 20, BV% - 20)-(BH% + 20, BV% + 20), 8, BF
DIR$ = "RIGHT": GOTO 101
CASE IS = "6"
LINE (BH% - 20, BV% - 20)-(BH% + 20, BV% + 20), 8, BF
DIR$ = "RIGHT": GOTO 101
CASE IS = CHR$(0) + "K"
LINE (BH% - 20, BV% - 20)-(BH% + 20, BV% + 20), 8, BF
DIR$ = "LEFT": GOTO 101
CASE IS = "4"
LINE (BH% - 20, BV% - 20)-(BH% + 20, BV% + 20), 8, BF
DIR$ = "LEFT": GOTO 101
CASE IS = CHR$(0) + "H"
LINE (BH% - 20, BV% - 20)-(BH% + 20, BV% + 20), 8, BF
DIR$ = "UP": GOTO 101
CASE IS = "8"
LINE (BH% - 20, BV% - 20)-(BH% + 20, BV% + 20), 8, BF
DIR$ = "UP": GOTO 101
CASE IS = CHR$(0) + "P"
LINE (BH% - 20, BV% - 20)-(BH% + 20, BV% + 20), 8, BF
DIR$ = "DOWN"
GOTO 101: CASE IS = "2"
LINE (BH% - 20, BV% - 20)-(BH% + 20, BV% + 20), 8, BF
DIR$ = "DOWN": GOTO 101
CASE IS = "9"
LINE (BH% - 20, BV% - 20)-(BH% + 20, BV% + 20), 8, BF
DIR$ = "UP-RIGHT": GOTO 101
CASE IS = "7"
LINE (BH% - 20, BV% - 20)-(BH% + 20, BV% + 20), 8, BF
DIR$ = "UP-LEFT": GOTO 101
CASE IS = "1"
LINE (BH% - 20, BV% - 20)-(BH% + 20, BV% + 20), 8, BF
DIR$ = "DOWN-LEFT": GOTO 101
CASE IS = "3"
LINE (BH% - 20, BV% - 20)-(BH% + 20, BV% + 20), 8, BF
DIR$ = "DOWN-RIGHT": GOTO 101
END SELECT
IF DIR1$ = "UP-LEFT" THEN LINE (BH1% - 5, BV1% - 4)-(BH1% - 13, BV1% - 12), 0: LINE (BH1% - 13, BV1% - 12)-(BH1% - 8, BV1% - 12), 0: LINE (BH1% - 13, BV1% - 12)-(BH1% - 13, BV1% - 7), 0
IF DIR1$ = "UP-RIGHT" THEN LINE (BH1% + 5, BV1% - 4)-(BH1% + 13, BV1% - 12), 0: LINE (BH1% + 13, BV1% - 12)-(BH1% + 8, BV1% - 12), 0: LINE (BH1% + 13, BV1% - 12)-(BH1% + 13, BV1% - 7), 0
IF DIR1$ = "DOWN-LEFT" THEN LINE (BH1% - 5, BV1% + 4)-(BH1% - 13, BV1% + 12), 0: LINE (BH1% - 13, BV1% + 12)-(BH1% - 8, BV1% + 12), 0: LINE (BH1% - 13, BV1% + 12)-(BH1% - 13, BV1% + 7), 0
IF DIR1$ = "DOWN-RIGHT" THEN LINE (BH1% + 5, BV1% + 4)-(BH1% + 13, BV1% + 12), 0: LINE (BH1% + 13, BV1% + 12)-(BH1% + 8, BV1% + 12), 0: LINE (BH1% + 13, BV1% + 12)-(BH1% + 13, BV1% + 7), 0
IF DIR1$ = "DOWN" THEN LINE (BH1%, BV1% + 6)-(BH1%, BV1% + 17), 0: LINE (B1H%, BV1% + 17)-(BH1% + 3, BV1% + 14), 0: LINE (BH1%, BV1% + 17)-(BH1% - 3, BV1% + 14), 0:
IF DIR1$ = "UP" THEN LINE (BH1%, BV1% - 6)-(BH1%, BV1% - 17), 0: LINE (BH1%, BV1% - 17)-(BH1% + 3, BV1% - 14), 0: LINE (BH1%, BV1% - 17)-(BH1% - 3, BV1% - 14), 0:
IF DIR1$ = "RIGHT" THEN LINE (BH1% + 7, BV1%)-(BH1% + 20, BV1%), 0: LINE (BH1% + 20, BV1%)-(BH1% + 17, BV1% + 3), 0: LINE (BH1% + 20, BV1%)-(BH1% + 17, BV1% - 3), 0:
IF DIR1$ = "LEFT" THEN LINE (BH1% - 7, BV1%)-(BH1% - 20, BV1%), 0: LINE (BH1% - 20, BV1%)-(BH1% - 17, BV1% + 3), 0: LINE (BH1% - 20, BV1%)-(BH1% - 17, BV1% - 3), 0:
IF DIR$ = "UP-LEFT" THEN LINE (BH% - 5, BV% - 4)-(BH% - 13, BV% - 12), 0: LINE (BH% - 13, BV% - 12)-(BH% - 8, BV% - 12), 0: LINE (BH% - 13, BV% - 12)-(BH% - 13, BV% - 7), 0
IF DIR$ = "UP-RIGHT" THEN LINE (BH% + 5, BV% - 4)-(BH% + 13, BV% - 12), 0: LINE (BH% + 13, BV% - 12)-(BH% + 8, BV% - 12), 0: LINE (BH% + 13, BV% - 12)-(BH% + 13, BV% - 7), 0
IF DIR$ = "DOWN-LEFT" THEN LINE (BH% - 5, BV% + 4)-(BH% - 13, BV% + 12), 0: LINE (BH% - 13, BV% + 12)-(BH% - 8, BV% + 12), 0: LINE (BH% - 13, BV% + 12)-(BH% - 13, BV% + 7), 0
IF DIR$ = "DOWN-RIGHT" THEN LINE (BH% + 5, BV% + 4)-(BH% + 13, BV% + 12), 0: LINE (BH% + 13, BV% + 12)-(BH% + 8, BV% + 12), 0: LINE (BH% + 13, BV% + 12)-(BH% + 13, BV% + 7), 0
IF DIR$ = "DOWN" THEN LINE (BH%, BV% + 6)-(BH%, BV% + 17), 0: LINE (BH%, BV% + 17)-(BH% + 3, BV% + 14), 0: LINE (BH%, BV% + 17)-(BH% - 3, BV% + 14), 0:
IF DIR$ = "UP" THEN LINE (BH%, BV% - 6)-(BH%, BV% - 17), 0: LINE (BH%, BV% - 17)-(BH% + 3, BV% - 14), 0: LINE (BH%, BV% - 17)-(BH% - 3, BV% - 14), 0:
IF DIR$ = "RIGHT" THEN LINE (BH% + 7, BV%)-(BH% + 20, BV%), 0: LINE (BH% + 20, BV%)-(BH% + 17, BV% + 3), 0: LINE (BH% + 20, BV%)-(BH% + 17, BV% - 3), 0:
IF DIR$ = "LEFT" THEN LINE (BH% - 7, BV%)-(BH% - 20, BV%), 0: LINE (BH% - 20, BV%)-(BH% - 17, BV% + 3), 0: LINE (BH% - 20, BV%)-(BH% - 17, BV% - 3), 0:
LOOP
table:
LINE (BH% - 20, BV% - 20)-(BH% + 20, BV% + 20), 8, BF
LINE (BH1% - 20, BV1% - 20)-(BH1% + 20, BV1% + 20), 8, BF
LINE (BH2% - 20, BV2% - 20)-(BH2% + 20, BV2% + 20), 8, BF
CALL drawtable
CIRCLE (BH%, BV%), 5, 0
PAINT (BH%, BV%), 15, 0
CIRCLE (BH1%, BV1%), 5, 0
PAINT (BH1%, BV1%), 4, 0
CIRCLE (BH2%, BV2%), 5, 0
PAINT (BH2%, BV2%), 4, 0
RETURN

'MOVEMENT OF CUE BALL
6 CIRCLE (BH1%, BV1%), 5, 0
PAINT (BH1%, BV1%), 4, 0
CIRCLE (BH2%, BV2%), 5, 0
PAINT (BH2%, BV2%), 4, 0
IF INKEY$ = CHR$(27) THEN CALL exitprogram
IF BH% > BH1% - 8 AND BH% < BH1% + 8 AND BV% > BV1% - 8 AND BV% < BV1% + 8 THEN CALL ping: SPEED12% = SPEED2%: DIR1$ = DIR$
IF BH% > BH2% - 8 AND BH% < BH2% + 8 AND BV% > BV2% - 8 AND BV% < BV2% + 8 THEN CALL ping: SPEED22% = SPEED2%: DIR2$ = DIR$
SPEED% = 0: IF SPEED2% > 500 AND DIR1$ = "NONE" THEN GOTO 101
7 IF SPEED% < SPEED2% THEN SPEED% = SPEED% + 1: GOTO 7
STARTDECEL% = STARTDECEL% + 1
IF STARTDECEL% > 250 THEN SPEED2% = SPEED2% + 2
IF BH% > 262 AND DIR$ = "RIGHT" THEN CALL ping: DIR$ = "LEFT"
IF BH% < 58 AND DIR$ = "LEFT" THEN CALL ping: DIR$ = "RIGHT"
IF BV% < 58 AND DIR$ = "UP" THEN CALL ping: DIR$ = "DOWN"
IF BV% > 142 AND DIR$ = "DOWN" THEN CALL ping: DIR$ = "UP"
IF BV% > 142 AND DIR$ = "DOWN-LEFT" THEN CALL ping: DIR$ = "UP-LEFT"
IF BH% < 58 AND DIR$ = "DOWN-LEFT" THEN CALL ping: DIR$ = "DOWN-RIGHT"
IF BH% > 262 AND DIR$ = "DOWN-RIGHT" THEN CALL ping: DIR$ = "DOWN-LEFT"
IF BV% > 142 AND DIR$ = "DOWN-RIGHT" THEN CALL ping: DIR$ = "UP-RIGHT"
IF BV% < 58 AND DIR$ = "UP-LEFT" THEN CALL ping: DIR$ = "DOWN-LEFT"
IF BH% < 58 AND DIR$ = "UP-LEFT" THEN CALL ping: DIR$ = "UP-RIGHT"
IF BV% < 58 AND DIR$ = "UP-RIGHT" THEN CALL ping: DIR$ = "DOWN-RIGHT"
IF BH% > 262 AND DIR$ = "UP-RIGHT" THEN CALL ping: DIR$ = "UP-LEFT"
IF DIR$ = "DOWN-RIGHT" THEN LINE (BH% - 6, BV% - 6)-(BH% + 5, BV% + 4), 8, BF
IF DIR$ = "DOWN-LEFT" THEN LINE (BH% - 4, BV% - 6)-(BH% + 6, BV% + 4), 8, BF
IF DIR$ = "DOWN" THEN LINE (BH% - 5, BV% - 6)-(BH% + 5, BV% + 4), 8, BF
IF DIR$ = "UP" THEN LINE (BH% - 5, BV% - 4)-(BH% + 5, BV% + 6), 8, BF
IF DIR$ = "RIGHT" THEN LINE (BH% - 6, BV% - 4)-(BH% + 4, BV% + 4), 8, BF
IF DIR$ = "LEFT" THEN LINE (BH% - 4, BV% - 4)-(BH% + 6, BV% + 4), 8, BF
IF DIR$ = "UP-LEFT" THEN LINE (BH% - 4, BV% - 4)-(BH% + 6, BV% + 6), 8, BF
IF DIR$ = "UP-RIGHT" THEN LINE (BH% - 6, BV% - 4)-(BH% + 5, BV% + 6), 8, BF
CIRCLE (BH%, BV%), 5, 0
PAINT (BH%, BV%), 15, 0
at% = 0
4 IF at% < 300 THEN at% = at% + 1: GOTO 4
IF DIR2$ <> "NONE" THEN DIR$ = "NONE": GOTO 9
IF DIR1$ <> "NONE" THEN DIR$ = "NONE": GOTO 8
IF DIR$ = "RIGHT" THEN
BH% = BH% + 1: GOTO 6
END IF
IF DIR$ = "NONE" THEN
BH% = BH%: BV% = BV%: GOTO 8
END IF
IF DIR$ = "LEFT" THEN
BH% = BH% - 1: GOTO 6
END IF
IF DIR$ = "UP" THEN
BV% = BV% - 1: GOTO 6
END IF
IF DIR$ = "DOWN" THEN
BV% = BV% + 1: GOTO 6
END IF
IF DIR$ = "DOWN-LEFT" THEN
BV% = BV% + 1: BH% = BH% - 1: GOTO 6
END IF
IF DIR$ = "DOWN-RIGHT" THEN
BV% = BV% + 1: BH% = BH% + 1: GOTO 6
END IF
IF DIR$ = "UP-LEFT" THEN
BV% = BV% - 1: BH% = BH% - 1: GOTO 6
END IF
IF DIR$ = "UP-RIGHT" THEN
BV% = BV% - 1: BH% = BH% + 1: GOTO 6
END IF

'MOVEMENT OF BALL 1
8 CIRCLE (BH%, BV%), 5, 0
PAINT (BH%, BV%), 15, 0
CIRCLE (BH2%, BV2%), 5, 0
PAINT (BH2%, BV2%), 4, 0
IF INKEY$ = CHR$(27) THEN CALL exitprogram
IF b2tob1$ = "NO" AND BH1% > BH2% - 8 AND BH1% < BH2% + 8 AND BV1% > BV2% - 8 AND BV1% < BV2% + 8 THEN CALL ping: SPEED22% = SPEED12%: DIR2$ = DIR1$: DIR1$ = "NONE": b1tob2$ = "YES": GOSUB table: GOTO 9
SPEED1% = 0: IF SPEED12% > 500 THEN GOTO 101
71 IF SPEED1% < SPEED12% THEN SPEED1% = SPEED1% + 1: GOTO 71
STARTDECEL1% = STARTDECEL1% + 1
IF STARTDECEL1% > 250 THEN SPEED12% = SPEED12% + 2
IF BH1% > 262 AND DIR1$ = "RIGHT" THEN CALL ping: DIR1$ = "LEFT"
IF BH1% < 58 AND DIR1$ = "LEFT" THEN CALL ping: DIR1$ = "RIGHT"
IF BV1% < 58 AND DIR1$ = "UP" THEN CALL ping: DIR1$ = "DOWN"
IF BV1% > 142 AND DIR1$ = "DOWN" THEN CALL ping: DIR1$ = "UP"
IF BV1% > 142 AND DIR1$ = "DOWN-LEFT" THEN CALL ping: DIR1$ = "UP-LEFT"
IF BH1% < 58 AND DIR1$ = "DOWN-LEFT" THEN CALL ping: DIR1$ = "DOWN-RIGHT"
IF BH1% > 262 AND DIR1$ = "DOWN-RIGHT" THEN CALL ping: DIR1$ = "DOWN-LEFT"
IF BV1% > 142 AND DIR1$ = "DOWN-RIGHT" THEN CALL ping: DIR1$ = "UP-RIGHT"
IF BV1% < 58 AND DIR1$ = "UP-LEFT" THEN CALL ping: DIR1$ = "DOWN-LEFT"
IF BH1% < 58 AND DIR1$ = "UP-LEFT" THEN CALL ping: DIR1$ = "UP-RIGHT"
IF BV1% < 58 AND DIR1$ = "UP-RIGHT" THEN CALL ping: DIR1$ = "DOWN-RIGHT"
IF BH1% > 262 AND DIR1$ = "UP-RIGHT" THEN CALL ping: DIR1$ = "UP-LEFT"
IF DIR1$ = "DOWN-RIGHT" THEN LINE (BH1% - 6, BV1% - 6)-(BH1% + 5, BV1% + 4), 8, BF
IF DIR1$ = "DOWN-LEFT" THEN LINE (BH1% - 4, BV1% - 6)-(BH1% + 6, BV1% + 4), 8, BF
IF DIR1$ = "DOWN" THEN LINE (BH1% - 5, BV1% - 6)-(BH1% + 5, BV1% + 4), 8, BF
IF DIR1$ = "UP" THEN LINE (BH1% - 5, BV1% - 4)-(BH1% + 5, BV1% + 6), 8, BF
IF DIR1$ = "RIGHT" THEN LINE (BH1% - 6, BV1% - 4)-(BH1% + 4, BV1% + 4), 8, BF
IF DIR1$ = "LEFT" THEN LINE (BH1% - 4, BV1% - 4)-(BH1% + 6, BV1% + 4), 8, BF
IF DIR1$ = "UP-LEFT" THEN LINE (BH1% - 4, BV1% - 4)-(BH1% + 6, BV1% + 6), 8, BF
IF DIR1$ = "UP-RIGHT" THEN LINE (BH1% - 6, BV1% - 4)-(BH1% + 5, BV1% + 6), 8, BF
CIRCLE (BH1%, BV1%), 5, 0
PAINT (BH1%, BV1%), 4, 0
AT1% = 0
41 IF AT1% < 300 THEN AT1% = AT1% + 1: GOTO 41
IF DIR1$ = "NONE" THEN GOTO 101'10
IF DIR1$ = "RIGHT" THEN
BH1% = BH1% + 1: GOTO 8
END IF
IF DIR1$ = "NONE" THEN
BH1% = BH1%: BV1% = BV1%: GOTO 8
END IF
IF DIR1$ = "LEFT" THEN
BH1% = BH1% - 1: GOTO 8
END IF
IF DIR1$ = "UP" THEN
BV1% = BV1% - 1: GOTO 8
END IF
IF DIR1$ = "DOWN" THEN
BV1% = BV1% + 1: GOTO 8
END IF
IF DIR1$ = "DOWN-LEFT" THEN
BV1% = BV1% + 1: BH1% = BH1% - 1: GOTO 8
END IF
IF DIR1$ = "DOWN-RIGHT" THEN
BV1% = BV1% + 1: BH1% = BH1% + 1: GOTO 8
END IF
IF DIR1$ = "UP-LEFT" THEN
BV1% = BV1% - 1: BH1% = BH1% - 1: GOTO 8
END IF
IF DIR1$ = "UP-RIGHT" THEN
BV1% = BV1% - 1: BH1% = BH1% + 1: GOTO 8
END IF

'MOVEMENT OF BALL 2
9 CIRCLE (BH%, BV%), 5, 0
PAINT (BH%, BV%), 15, 0
CIRCLE (BH1%, BV1%), 5, 0
PAINT (BH1%, BV1%), 4, 0
IF INKEY$ = CHR$(27) THEN CALL exitprogram
IF b1tob2$ = "NO" AND BH2% > BH1% - 8 AND BH2% < BH1% + 8 AND BV2% > BV1% - 8 AND BV2% < BV1% + 8 THEN CALL ping: SPEED12% = SPEED22%: DIR1$ = DIR2$: DIR2$ = "NONE": b2tob1$ = "YES": GOSUB table: GOTO 8
SPEED2A% = 0: IF SPEED22% > 500 THEN GOTO 101
72 IF SPEED2A% < SPEED22% THEN SPEED2A% = SPEED2A% + 1: GOTO 72
STARTDECEL2% = STARTDECEL2% + 1
IF STARTDECEL2% > 250 THEN SPEED22% = SPEED22% + 2
IF BH2% > 262 AND DIR2$ = "RIGHT" THEN CALL ping: DIR2$ = "LEFT"
IF BH2% < 58 AND DIR2$ = "LEFT" THEN CALL ping: DIR2$ = "RIGHT"
IF BV2% < 58 AND DIR2$ = "UP" THEN CALL ping: DIR2$ = "DOWN"
IF BV2% > 142 AND DIR2$ = "DOWN" THEN CALL ping: DIR2$ = "UP"
IF BV2% > 142 AND DIR2$ = "DOWN-LEFT" THEN CALL ping: DIR2$ = "UP-LEFT"
IF BH2% < 58 AND DIR2$ = "DOWN-LEFT" THEN CALL ping: DIR2$ = "DOWN-RIGHT"
IF BH2% > 262 AND DIR2$ = "DOWN-RIGHT" THEN CALL ping: DIR2$ = "DOWN-LEFT"
IF BV2% > 142 AND DIR2$ = "DOWN-RIGHT" THEN CALL ping: DIR2$ = "UP-RIGHT"
IF BV2% < 58 AND DIR2$ = "UP-LEFT" THEN CALL ping: DIR2$ = "DOWN-LEFT"
IF BH2% < 58 AND DIR2$ = "UP-LEFT" THEN CALL ping: DIR2$ = "UP-RIGHT"
IF BV2% < 58 AND DIR2$ = "UP-RIGHT" THEN CALL ping: DIR2$ = "DOWN-RIGHT"
IF BH2% > 262 AND DIR2$ = "UP-RIGHT" THEN CALL ping: DIR2$ = "UP-LEFT"
IF DIR2$ = "DOWN-RIGHT" THEN LINE (BH2% - 6, BV2% - 6)-(BH2% + 5, BV2% + 4), 8, BF
IF DIR2$ = "DOWN-LEFT" THEN LINE (BH2% - 4, BV2% - 6)-(BH2% + 6, BV2% + 4), 8, BF
IF DIR2$ = "DOWN" THEN LINE (BH2% - 5, BV2% - 6)-(BH2% + 5, BV2% + 4), 8, BF
IF DIR2$ = "UP" THEN LINE (BH2% - 5, BV2% - 4)-(BH2% + 5, BV2% + 6), 8, BF
IF DIR2$ = "RIGHT" THEN LINE (BH2% - 6, BV2% - 4)-(BH2% + 4, BV2% + 4), 8, BF
IF DIR2$ = "LEFT" THEN LINE (BH2% - 4, BV2% - 4)-(BH2% + 6, BV2% + 4), 8, BF
IF DIR2$ = "UP-LEFT" THEN LINE (BH2% - 4, BV2% - 4)-(BH2% + 6, BV2% + 6), 8, BF
IF DIR2$ = "UP-RIGHT" THEN LINE (BH2% - 6, BV2% - 4)-(BH2% + 5, BV2% + 6), 8, BF
CIRCLE (BH2%, BV2%), 5, 0
PAINT (BH2%, BV2%), 4, 0
AT2% = 0
42 IF AT2% < 300 THEN AT2% = AT2% + 1: GOTO 42
IF DIR2$ = "NONE" THEN GOTO 101'10
IF DIR2$ = "RIGHT" THEN
BH2% = BH2% + 1: GOTO 9
END IF
IF DIR2$ = "NONE" THEN
BH2% = BH2%: BV2% = BV2%: GOTO 9
END IF
IF DIR2$ = "LEFT" THEN
BH2% = BH2% - 1: GOTO 9
END IF
IF DIR2$ = "UP" THEN
BV2% = BV2% - 1: GOTO 9
END IF
IF DIR2$ = "DOWN" THEN
BV2% = BV2% + 1: GOTO 9
END IF
IF DIR2$ = "DOWN-LEFT" THEN
BV2% = BV2% + 1: BH2% = BH2% - 1: GOTO 9
END IF
IF DIR2$ = "DOWN-RIGHT" THEN
BV2% = BV2% + 1: BH2% = BH2% + 1: GOTO 9
END IF
IF DIR2$ = "UP-LEFT" THEN
BV2% = BV2% - 1: BH2% = BH2% - 1: GOTO 9
END IF
IF DIR2$ = "UP-RIGHT" THEN
BV2% = BV2% - 1: BH2% = BH2% + 1: GOTO 9
END IF

FUNCTION DetectCard%
CALL WriteReg(&H4, &H60)
CALL WriteReg(&H4, &H80)
B = INP(&H388)
CALL WriteReg(&H2, &HFF)
CALL WriteReg(&H4, &H21)
FOR x = 0 TO 130
A = INP(&H388)
NEXT x
c = INP(&H388)
CALL WriteReg(&H4, &H60)
CALL WriteReg(&H4, &H80)
Success = 0
IF (B AND &HE0) = &H0 THEN
IF (c AND &HE0) = &HC0 THEN
Success = -1
END IF
END IF
DetectCard% = Success
END FUNCTION

DEFSNG A-Z
SUB drawtable
LINE (50, 50)-(270, 150), 0, B
LINE (43, 43)-(277, 157), 0, B
LINE (44, 44)-(276, 49), 215, BF
LINE (44, 44)-(49, 156), 215, BF
LINE (49, 156)-(276, 151), 215, BF
LINE (276, 44)-(271, 156), 215, BF
PAINT (2, 100), 218, 0 'GROUND
LINE (0, 42)-(320, 32), 218, BF
LINE (0, 158)-(320, 175), 218, BF
LINE (42, 32)-(25, 200), 218, BF
LINE (278, 32)-(300, 200), 218, BF
LINE (0, 0)-(320, 31), 0, BF
LOCATE 1, 1: PRINT "            Tries Used: "; tries%
LOCATE 2, 1: PRINT "            Tries Left: "; limitoftries% - tries%
LOCATE 3, 1: PRINT "            Your Score: "; score%
LOCATE 4, 1: PRINT "            High Score: "; highscore%
END SUB

DEFINT A-Z
SUB exitprogram
CALL puthighscore
LOCATE 3, 2: COLOR 12: PRINT "Be sure to play again!"
LOCATE 4, 2: COLOR 12: PRINT "I've gotten scores as high as 800!"
DO: IF INKEY$ <> "" THEN EXIT DO:
LOOP: CLS : SYSTEM
END SUB

SUB gamenumber
67 CLS : SCREEN 9: SLEEP 1: COLOR 10
LOCATE 2, 2: INPUT "What game number do you want to play (1 to 5 or 0 for random)? ", game%
IF game% < 0 OR game% > 5 THEN GOTO 67
CLS : SCREEN 13: COLOR 4
END SUB

SUB gethighscore
SLEEP 1: SLEEP 1: SLEEP 1
CLS : SCREEN 13: COLOR 12
LOCATE 2, 2: PRINT "Enter your name:"
LOCATE 4, 2: INPUT name$
END SUB

SUB ping
score% = score% + 10
CALL drawtable
FOR nt = 0 TO 255
NEXT nt
SBPlay 200
FOR delay% = 0 TO 100 STEP 1:
NEXT delay%
CALL WriteReg(&HB0, &H0) 'Makes sure no extra sound is left playing
END SUB

SUB puthighscore
CLS : SCREEN 13: SLEEP 1: ABC% = 1
DO: LOCATE 2, 7: COLOR 10: PRINT "The high-score belongs to..."
LOCATE 4, 17: COLOR ABC%: PRINT name$
LOCATE 6, 7: COLOR 10: PRINT "He or she had a score of..."
LOCATE 8, 17: COLOR ABC%: PRINT highscore%
ABC% = ABC% + 1: IF ABC% > 254 THEN ABC% = 1
IF INKEY$ <> "" AND INKEY$ <> CHR$(27) THEN CLS : EXIT SUB
IF INKEY$ = CHR$(27) THEN CALL exitprogram
LOOP
END SUB

SUB rules
CLS : SCREEN 9: SLEEP 1
LOCATE 4, 2: COLOR 12: PRINT "RULES:"
LOCATE 6, 2: COLOR 10: PRINT "1) The object of the game is to recieve the highest score, therefore, there is     no way to win."
LOCATE 9, 2: COLOR 10: PRINT "2) Scoring is handled by the following:  10 points everytime a ball hits a wall,   and 10 points evertime a ball hits another ball."
LOCATE 12, 2: COLOR 10: PRINT "3) Although I put down 600 as my high score, I have gotten as high as 800.  See    if you can get any higher!"
DO: IF INKEY$ <> "" THEN EXIT DO
LOOP: CLS
END SUB

SUB SBInit
FOR q = 1 TO &HF5
CALL WriteReg(q, 0)
NEXT q
END SUB

SUB SBPlay (freq%)
IF sounds$ = "NO" THEN EXIT SUB
IF soundcard$ = "NO" THEN SOUND 500, .5: EXIT SUB
CALL WriteReg(&H20, &H7)
CALL WriteReg(&H40, &HF)
CALL WriteReg(&H60, &HF0)
CALL WriteReg(&H80, &HF0)
CALL WriteReg(&HA0, freq%)
CALL WriteReg(&H23, &HF)
CALL WriteReg(&H43, &H0)
CALL WriteReg(&H63, &HF0)
CALL WriteReg(&H83, &HFF)
CALL WriteReg(&HB0, &H20)
CALL WriteReg(&HE0, &H0)
END SUB

SUB soundoptions
SPD = 50: CLS : SCREEN 13: SLEEP 1: SLEEP 1
210 LOCATE 9, 17: COLOR 12: PRINT "  QB-POOL": LOCATE 11, 14
COLOR 10: IF SELCT = 0 THEN PRINT CHR$(16); " SOUND CARD? ";  ELSE PRINT "  SOUND CARD? ";
IF PLAYER = 0 THEN PRINT "YES" ELSE IF PLAYER = 1 THEN PRINT "NO "
LOCATE 13, 14
IF SELCT = 1 THEN PRINT CHR$(16); " SOUND ON? ";  ELSE PRINT "  SOUND ON? ";
IF STYLE = 0 THEN PRINT "YES" ELSE IF STYLE = 1 THEN PRINT "NO "
14 LOCATE 15, 14
IF SELCT = 2 THEN PRINT CHR$(16); " GO TO QB-POOL";  ELSE PRINT "  GO TO QB-POOL";
DO: A$ = INKEY$: LOOP WHILE A$ = ""
IF A$ = CHR$(27) THEN CALL exitprogram
IF A$ = CHR$(0) + "H" THEN SELCT = SELCT - 1: IF SELCT < 0 THEN SELCT = 0: GOTO 210 ELSE GOTO 210
IF A$ = CHR$(0) + "P" THEN SELCT = SELCT + 1: IF SELCT > 2 THEN SELCT = 2: GOTO 210 ELSE GOTO 210
IF SELCT = 0 AND PLAYER = 0 THEN PLAYER = 1 ELSE IF SELCT = 0 AND PLAYER = 1 THEN PLAYER = 0
IF SELCT = 1 AND STYLE = 0 THEN STYLE = 1 ELSE IF SELCT = 1 AND STYLE = 1 THEN STYLE = 0
IF SELCT = 2 AND SPD = 50 THEN SPD = 250 ELSE IF SELCT = 2 AND SPD = 250 THEN SPD = 500 ELSE IF SELCT = 2 AND SPD = 500 THEN SPD = 50
IF SELCT <> 2 THEN GOTO 210
CLS : SCREEN 13
IF PLAYER = 0 THEN soundcard$ = "YES"
IF PLAYER = 1 THEN soundcard$ = "NO"
IF STYLE = 0 THEN sounds$ = "YES"
IF STYLE = 1 THEN sounds$ = "NO"
END SUB

SUB triesareup
CLS : COLOR 12
LOCATE 2, 2: PRINT "Your score was"; score%: SLEEP 1
SELECT CASE score%
CASE IS > highscore%
LOCATE 4, 2: PRINT "You've got a high score!": highscore% = score%: CALL gethighscore
CASE IS = highscore%
LOCATE 4, 2: PRINT "You almost got a high score!  So close!":
DO: IF INKEY$ <> "" THEN EXIT DO:
LOOP
CASE IS < highscore%
LOCATE 4, 2: PRINT "Better luck next time!":
DO:
IF INKEY$ = CHR$(27) THEN CALL exitprogram
IF INKEY$ <> "" THEN EXIT DO:
LOOP
END SELECT
CLS
END SUB

SUB WriteReg (Reg%, Value%)
OUT &H388, Reg%
FOR x = 0 TO 5
A = INP(&H388)
NEXT x
OUT &H389, Value%
FOR x = 0 TO 34
A = INP(&H388)
NEXT x
END SUB


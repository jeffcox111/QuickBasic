DECLARE SUB DETERMIN ()
DECLARE SUB SAVEME (SBV$)
DECLARE SUB LOAD (SBV$)
DECLARE SUB DIRECT ()
DECLARE SUB NEWFILE (SBV$)
DECLARE SUB SECTOFOR (T1!, K!)
DECLARE SUB SAYSELECT (FILE$)
DECLARE SUB PLAYBACK ()
DECLARE SUB RECORD ()
DECLARE SUB MARK1 (Y!)
DECLARE SUB MARK2 (Y2!)
DECLARE SUB OSC (A%)
DECLARE SUB DIGITS (D1!, D2!, D3)
DECLARE SUB BOX (BX, BY, EX, EY, T)
DECLARE SUB SETUP ()
DECLARE FUNCTION samplebyte% (BP%)
DECLARE SUB writedsp (byte%, BP%)
DECLARE SUB sbreset (BP%)
DIM SHARED LS%, LS2%, LS3%, T1, K, DIR$, Y, Y2, VOC, VOC2
DIM SHARED SMP%(32766)
DIM SHARED SM%(32766)
DIM SHARED SM2%(32766)
CONST BP% = &H220
CALL sbreset(BP%)
CONST UP = 1
CONST DOWN = 2
DIR$ = "C:\QB45" 'Set your default directory hear"
SCREEN 9:  COLOR 0, 7: CLS : SETUP
PALETTE 3, 59: SLEEP 2: PALETTE 3, 24
COLOR 12: LOCATE 18, 65: PRINT DIR$
Y = 0: Y2 = -50
MARK1 Y: MARK2 Y2
IN:
K$ = INKEY$
A% = samplebyte%(BP%)
IF K$ = "7" THEN GOSUB Y1: MARK1 Y
IF K$ = "1" THEN GOSUB YY1: MARK1 Y
IF K$ = "9" THEN GOSUB Y2: MARK2 Y2
IF K$ = "3" THEN GOSUB YY2: MARK2 Y2
IF K$ = "R" OR K$ = "r" THEN RECORD
IF K$ = "P" OR K$ = "p" THEN PLAYBACK
IF K$ = "L" OR K$ = "l" THEN LOAD "SAMPLE.SBV"
IF K$ = "S" OR K$ = "s" THEN SAVEME SBV$
IF K$ = "D" OR K$ = "d" THEN DIRECT
IF K$ <> CHR$(27) THEN GOTO IN
SYSTEM
Y1:
LINE (382, 125 + Y)-(415, 140 + Y), 7, BF
Y = Y - 10
IF Y = -60 THEN Y = -50
RETURN
YY1:
LINE (382, 125 + Y)-(415, 140 + Y), 7, BF
Y = Y + 10
IF Y = 50 THEN Y = 40
RETURN
Y2:
LINE (453, 125 + Y2)-(481, 140 + Y2), 7, BF
Y2 = Y2 - 10
IF Y2 = -60 THEN Y2 = -50
RETURN
YY2:
LINE (453, 125 + Y2)-(481, 140 + Y2), 7, BF
Y2 = Y2 + 10
IF Y2 = 50 THEN Y2 = 40
RETURN

SUB adjust1
END SUB

SUB BOX (BX, BY, EX, EY, T)
SELECT CASE T
CASE 1
LINE (BX, BY)-(EX, BY), 15
LINE (BX, BY)-(BX, EY), 15
LINE (BX, EY)-(EX, EY), 8
LINE (EX, BY)-(EX, EY), 8
CASE 2
LINE (BX, BY)-(EX, BY), 8
LINE (BX, BY)-(BX, EY), 8
LINE (BX, EY)-(EX, EY), 15
LINE (EX, BY)-(EX, EY), 15
END SELECT
END SUB

SUB DETERMIN
IF Y = -50 THEN VOC = 80
IF Y = -40 THEN VOC = 70
IF Y = -30 THEN VOC = 60
IF Y = -10 THEN VOC = 50
IF Y = 0 THEN VOC = 40
IF Y = 10 THEN VOC = 16
IF Y = 20 THEN VOC = 22
IF Y = 30 THEN VOC = 28
IF Y = 40 THEN VOC = 34

IF Y2 = -50 THEN VOC2 = 0
IF Y2 = -40 THEN VOC2 = 1
IF Y2 = -30 THEN VOC2 = 2
IF Y2 = -20 THEN VOC2 = 3
IF Y2 = -10 THEN VOC2 = 4
IF Y2 = 0 THEN VOC2 = 5
IF Y2 = 10 THEN VOC2 = 6
IF Y2 = 20 THEN VOC2 = 7
IF Y2 = 30 THEN VOC2 = 8
IF Y2 = 40 THEN VOC2 = 9
END SUB

SUB DIGITS (D1, D2, D3)
PALETTE 11, 59
SELECT CASE D1
CASE 0
L1 = 11: L2 = 11: L3 = 11: L4 = 11: L5 = 11: L6 = 11: L7 = 3
CASE 1
L1 = 3: L2 = 3: L3 = 3: L4 = 3: L5 = 11: L6 = 11: L7 = 3
CASE 2
L1 = 3: L2 = 11: L3 = 11: L4 = 11: L5 = 11: L6 = 3: L7 = 11
END SELECT
SELECT CASE D2
CASE 0
LL1 = 11: LL2 = 11: LL3 = 11: LL4 = 11: LL5 = 11: LL6 = 11: LL7 = 3
CASE 1
LL1 = 3: LL2 = 3: LL3 = 3: LL4 = 3: LL5 = 11: LL6 = 11: LL7 = 3
CASE 2
LL1 = 3: LL2 = 11: LL3 = 11: LL4 = 11: LL5 = 11: LL6 = 3: LL7 = 11
CASE 3
LL1 = 3: LL2 = 3: LL3 = 11: LL4 = 11: LL5 = 11: LL6 = 11: LL7 = 11
CASE 4
LL1 = 11: LL2 = 3: LL3 = 3: LL4 = 3: LL5 = 11: LL6 = 11: LL7 = 11
CASE 5
LL1 = 11: LL2 = 3: LL3 = 11: LL4 = 11: LL5 = 3: LL6 = 11: LL7 = 11
CASE 6
LL1 = 11: LL2 = 11: LL3 = 11: LL4 = 11: LL5 = 3: LL6 = 11: LL7 = 11
CASE 7
LL1 = 3: LL2 = 3: LL3 = 11: LL4 = 3: LL5 = 11: LL6 = 11: LL7 = 3
CASE 8
LL1 = 11: LL2 = 11: LL3 = 11: LL4 = 11: LL5 = 11: LL6 = 11: LL7 = 11
CASE 9
LL1 = 11: LL2 = 3: LL3 = 11: LL4 = 3: LL5 = 11: LL6 = 11: LL7 = 11
END SELECT
SELECT CASE D3
CASE 10
stopp = 11: rec = 3: playy = 3
CASE 11
rec = 11: stopp = 3: playy = 3
CASE 12
playy = 11: stopp = 3: rec = 3
END SELECT
LINE (240, 120)-(260, 140), playy
LINE (260, 140)-(240, 160), playy
LINE (240, 160)-(240, 120), playy: PAINT (241, 150), playy
LINE (180, 130)-(200, 150), rec, BF
CIRCLE (220, 140), 15, stopp: PAINT (220, 140), stopp
LINE (19, 120)-(19, 155), L1
LINE (19, 157)-(19, 192), L2
LINE (21, 120)-(69, 120), L3
LINE (21, 192)-(69, 192), L4
LINE (70, 120)-(70, 155), L5
LINE (70, 157)-(70, 192), L6
LINE (21, 155)-(66, 155), L7
LINE (119, 120)-(119, 155), LL1
LINE (119, 157)-(119, 192), LL2
LINE (121, 120)-(169, 120), LL3
LINE (121, 192)-(169, 192), LL4
LINE (170, 120)-(170, 155), LL5
LINE (170, 157)-(170, 192), LL6
LINE (123, 155)-(166, 155), LL7
LINE (69, 120)-(119, 120), 6
LINE (170, 120)-(250, 120), 6
LINE (69, 192)-(119, 192), 6
LINE (170, 192)-(250, 192), 6
END SUB

SUB DIRECT
LOCATE 18, 64: INPUT "", DIR$
END SUB

SUB LOAD (SBV$)
NEWFILE SBV$
OPEN DIR$ + "\" + SBV$ + ".SBV" FOR INPUT AS #1
INPUT #1, LS%: INPUT #1, LS2%: INPUT #1, LS3%
FOR I% = 1 TO LS%
LINE INPUT #1, A$: B = ASC(A$): SMP%(I%) = B
NEXT
FOR I% = 1 TO LS2%
LINE INPUT #1, A$: B = ASC(A$): SM%(I%) = B
NEXT
FOR I% = 1 TO LS3%
LINE INPUT #1, A$: B = ASC(A$): SM2%(I%) = B
NEXT
CLOSE
END SUB

SUB MARK1 (Y)
LINE (382, 130 + Y)-(395, 125 + Y), 15
LINE (395, 125 + Y)-(395, 130 + Y), 15
LINE (395, 130 + Y)-(410, 130 + Y), 15
LINE (410, 130 + Y)-(410, 135 + Y), 8
LINE (410, 135 + Y)-(395, 135 + Y), 8
LINE (395, 135 + Y)-(395, 140 + Y), 8
LINE (395, 140 + Y)-(382, 130 + Y), 8
END SUB

SUB MARK2 (Y2)
LINE (453, 130 + Y2)-(466, 125 + Y2), 15
LINE (466, 125 + Y2)-(466, 130 + Y2), 15
LINE (466, 130 + Y2)-(481, 130 + Y2), 15
LINE (481, 130 + Y2)-(481, 135 + Y2), 8
LINE (481, 135 + Y2)-(466, 135 + Y2), 8
LINE (466, 135 + Y2)-(466, 140 + Y2), 8
LINE (466, 140 + Y2)-(453, 130 + Y2), 8
END SUB

SUB NEWFILE (SBV$)
LOCATE 23, 50: INPUT "", SBV$
END SUB

SUB PLAYBACK
DIGITS T1, K, 12
DETERMIN
CALL writedsp(&HD1, BP%)  'Turn speaker on
FOR T% = 1 TO LS%
        CALL writedsp(&H10, BP%)
        CALL writedsp(SMP%(T%), BP%)
        FOR I = 1 TO VOC2: NEXT
NEXT T%
FOR T% = 1 TO LS2%
        CALL writedsp(&H10, BP%)
        CALL writedsp(SM%(T%), BP%)
        FOR I = 1 TO VOC2: NEXT
NEXT T%
FOR T% = 1 TO LS3%
        CALL writedsp(&H10, BP%)
        CALL writedsp(SM2%(T%), BP%)
        FOR I = 1 TO VOC2: NEXT
NEXT T%
CALL writedsp(&HD3, BP%)  'Turn speaker off
DIGITS T1, K, 10
END SUB

SUB RECORD
LINE (21, 194)-(69, 194), 12
1 K$ = INKEY$
IF K$ = "0" THEN T1 = VAL(K$): GOTO 10
IF K$ = "1" THEN T1 = VAL(K$): GOTO 10
GOTO 1
10 DIGITS T1, 0, 10: LINE (21, 194)-(69, 194), 6
LINE (121, 194)-(169, 194), 12
11 K$ = INKEY$
K = VAL(K$)
FOR I = 1 TO 9
IF K = I OR K$ = "0" THEN GOTO 20
NEXT
GOTO 11
20
LINE (121, 194)-(169, 194), 6
SECTOFOR T1, K
IF K$ = "0" THEN K = 0
DIGITS T1, K, 11
DETERMIN
FOR T% = 1 TO LS%
        SMP%(T%) = samplebyte(BP%)
        IF SMP%(T%) > 254 THEN BEEP
        FOR U% = 1 TO VOC: NEXT U%
NEXT T%
FOR T% = 1 TO LS2%
        SM%(T%) = samplebyte(BP%)
        FOR U% = 1 TO 40 + VOC: NEXT U%
NEXT T%
FOR T% = 1 TO LS3%
        SM2%(T%) = samplebyte(BP%)
        FOR U% = 1 TO 40 + VOC: NEXT U%
NEXT T%
BEEP
DIGITS 0, 0, 10
END SUB

FUNCTION samplebyte% (BP%)
CALL writedsp(&H20, BP%)
datavail% = BP% + 14
dly:
        IF INP(datavail%) AND &H80 = 0 THEN GOTO dly
datread% = BP% + 10
bt% = INP(datread%)
samplebyte% = bt%

END FUNCTION

SUB SAVEME (SBV$)
NEWFILE SBV$
OPEN DIR$ + "\" + SBV$ + ".SBV" FOR OUTPUT AS #1
PRINT #1, LS%: PRINT #1, LS2%: PRINT #1, LS3%
FOR I% = 1 TO LS%
PRINT #1, CHR$(SMP%(I%))
NEXT
FOR I% = 1 TO LS2%
PRINT #1, CHR$(SM%(I%))
NEXT
FOR I% = 1 TO LS3%
PRINT #1, CHR$(SM2%(I%))
NEXT
CLOSE
END SUB

SUB SAYSELECT (FILE$)
CALL writedsp(&HD1, BP%)
OPEN FILE$ FOR INPUT AS #1
FOR I% = 1 TO 8000
LINE INPUT #1, A$
SMP%(I%) = ASC(A$)
NEXT
CLOSE
FOR T% = 1 TO 8000
        CALL writedsp(&H10, BP%)
        CALL writedsp(SMP%(T%), BP%)
NEXT T%
CALL writedsp(&HD3, BP%)
END SUB

SUB sbreset (BP%)
dspreset% = BP% + 6
OUT dspreset%, 1
FOR T% = 1 TO 10
        A% = INP(dspreset%)
NEXT T%
OUT dspreset%, 0
dspread% = BP% + 10
FOR T% = 1 TO 10
        A% = INP(dspread%)
NEXT T%
END SUB

SUB SECTOFOR (T1, K)
IF T1 = 1 AND K = 0 THEN LS% = 32766: LS2% = 21844
IF T1 = 1 AND K = 1 THEN LS% = 32766: LS2% = 27305
IF T1 = 1 AND K = 2 THEN LS% = 32766: LS2% = 32766
IF T1 = 1 AND K = 3 THEN LS% = 32766: LS2% = 32766: LS3% = 5461
IF T1 = 1 AND K = 4 THEN LS% = 32766: LS2% = 32766: LS3% = 10922
IF T1 = 1 AND K = 5 THEN LS% = 32766: LS2% = 32766: LS3% = 16383
IF T1 = 1 AND K = 6 THEN LS% = 32766: LS2% = 32766: LS3% = 21844
IF T1 = 1 AND K = 7 THEN LS% = 32766: LS2% = 32766: LS3% = 27305
IF T1 = 1 AND K = 8 THEN LS% = 32766: LS2% = 32766: LS3% = 32766
IF T1 = 0 AND K = 1 THEN LS% = 5461
IF T1 = 0 AND K = 2 THEN LS% = 10922
IF T1 = 0 AND K = 3 THEN LS% = 16383
IF T1 = 0 AND K = 4 THEN LS% = 21844
IF T1 = 0 AND K = 5 THEN LS% = 27305
IF T1 = 0 AND K = 6 THEN LS% = 32766
IF T1 = 0 AND K = 7 THEN LS% = 32766: LS2% = 5461
IF T1 = 0 AND K = 8 THEN LS% = 32766: LS2% = 10922
IF T1 = 0 AND K = 9 THEN LS% = 32766: LS2% = 16383
END SUB

SUB SETUP
BOX 5, 5, 634, 55, UP
BOX 10, 10, 629, 50, DOWN
COLOR 10
LOCATE 2, 3: PRINT "Load           Save         Directory          Exit"
BOX 10, 60, 250, 100, DOWN
PALETTE 6, 0
LINE (12, 62)-(248, 98), 6, BF
FOR I = 1 TO 50 STEP 12
LINE (17 + I, 69)-(26 + I, 78), 2, BF
LINE (17 + I, 85)-(26 + I, 94), 2, BF
NEXT
FOR I = 1 TO 40 STEP 12
LINE (80 + I, 69)-(89 + I, 78), 4, BF
LINE (80 + I, 85)-(89 + I, 94), 4, BF
NEXT
FOR I = 1 TO 30 STEP 12
LINE (130 + I, 69)-(139 + I, 78), 1, BF
LINE (130 + I, 85)-(139 + I, 94), 1, BF
NEXT
BOX 300, 60, 610, 200, UP
BOX 350, 70, 420, 180, UP
BOX 421, 70, 491, 180, UP
BOX 380, 75, 381, 175, DOWN
BOX 451, 75, 452, 175, DOWN
FOR I = 75 TO 175 STEP 20
LINE (370, I)-(374, I), 15
LINE (369, I + 1)-(373, I + 1), 8
LINE (441, I)-(445, I), 15
LINE (440, I + 1)-(444, I + 1), 8
NEXT
BOX 50, 250, 100, 290, UP
BOX 120, 250, 170, 290, UP
BOX 190, 250, 240, 290, UP
BOX 40, 240, 250, 300, UP
BOX 45, 245, 245, 295, DOWN
LINE (55, 251)-(98, 272), 6
LINE (98, 272)-(55, 290), 6
LINE (55, 251)-(55, 290), 6
PAINT (56, 259), 6
CIRCLE (145, 270), 20, 6
PAINT (145, 270), 6
LINE (195, 255)-(235, 285), 4, BF
BOX 5, 110, 280, 200, DOWN
LINE (7, 112)-(278, 198), 6, BF
PALETTE 3, 24
FOR I = 1 TO 200 STEP 50
LINE (19 + I, 120)-(19 + I, 155), 3
LINE (19 + I, 157)-(19 + I, 192), 3
LINE (21 + I, 120)-(69 + I, 120), 3
LINE (21 + I, 192)-(69 + I, 192), 3
LINE (23, 155)-(66, 155), 3
LINE (123, 155)-(166, 155), 3
LINE (69, 120)-(119, 120), 6
LINE (170, 120)-(250, 120), 6
LINE (69, 192)-(119, 192), 6
LINE (170, 192)-(250, 192), 6
NEXT
LINE (240, 120)-(260, 140), 3
LINE (260, 140)-(240, 160), 3
LINE (240, 160)-(240, 120), 3: PAINT (241, 150), 3
CIRCLE (220, 140), 15, 3: PAINT (220, 140), 3
LINE (180, 130)-(200, 150), 3, BF
DIGITS 0, 0, 10
LINE (99, 120)-(99, 150), 11
LINE (99, 160)-(99, 192), 11
DIGITS 0, 0, 10
BOX 350, 220, 620, 270, UP: BOX 355, 225, 615, 265, DOWN
BOX 350, 280, 620, 330, UP: BOX 355, 285, 615, 325, DOWN
COLOR 6
LOCATE 22, 50: PRINT "Current filename:"
LOCATE 18, 46: PRINT "Load from/Save to:"
LOCATE 6, 63: PRINT "Left: During"
LOCATE 7, 63: PRINT "Recording only"
LOCATE 9, 63: PRINT "Right: During"
LOCATE 10, 63: PRINT "Playback only"
DIGITS 0, 0, 10
COLOR 12
LOCATE 6, 24: PRINT "G.P.S"
BOX 184, 70, 224, 84, UP
END SUB

SUB writedsp (byte%, BP%)
dspcmd% = BP% + 12
FOR T% = 1 TO 8
        q% = INP(dspcmd%)
NEXT T%
OUT dspcmd%, byte%
END SUB


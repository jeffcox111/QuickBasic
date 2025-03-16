DECLARE SUB delay ()
DECLARE SUB delay1 ()
DECLARE SUB flash ()
DECLARE SUB rgb (col!, r!, g!, b!)
1
WHILE INKEY$ = ""
SCREEN 12
RANDOMIZE TIMER
a% = INT(RND * 480)
b% = a% + 28
c% = a% + 30
d% = a% + 56
e% = a% + 35
f% = a% + 25
g% = a% + 21

CLS
CIRCLE (a%, a%), 4, 15
DRAW "c15 bd4 br4 f15 "
CIRCLE (b%, c%), 14, 15
DRAW "bu11 br9 e15"
CIRCLE (d%, a%), 4, 15
CIRCLE (e%, f%), 1, 15
CIRCLE (g%, f%), 1, 15
DRAW "bd24 br2 c14 nd20 r10 d20 l10 u2 r10 u2 l10 u2 r10 u2 l10 u2 r10 u2 l10 u 2 r10 u2 l10 u2 r10 u2 l10 u2 r10 u2 l10"
DRAW "c15 br10 bd 3 r10 e15"
DRAW "bg15 bl20 l10 g15"
DRAW "bd7 br25 nd25 br 10 d 25"
delay
CLS
CIRCLE (a%, a%), 4, 15
DRAW "c15 bd4 br4 f15 "
CIRCLE (b%, c%), 14, 15
DRAW "bu11 br9 e15"
CIRCLE (d%, a%), 4, 15
CIRCLE (e%, f%), 1, 15
CIRCLE (g%, f%), 1, 15
DRAW "c14 bd24 br2 nd20 r10 d20 l10 u2 r10 u2 l10 u2 r10 u2 l10 u2 r10 u2 l10 u 2 r10 u2 l10 u2 r10 u2 l10 u2 r10 u2 l10"
DRAW "c15 br10 bd 3 r10 f15"
DRAW "bh15 bl20 l10 h15"
DRAW "bd30 br25 d15 g10 br10 be10 bu10 d15 f 10"
delay
WEND
INPUT " ", f$
IF f$ = "a" THEN
GOTO 1
ELSEIF f$ = "terminex" THEN
  GOTO ending
ELSE
END
END IF

ending:
  CLS
  flash
  RANDOMIZE TIMER
  a% = 150
  b% = a% + 28
  c% = a% + 30
  d% = a% + 56
  e% = a% + 35
  f% = a% + 25
  g% = a% + 21
  t% = INT(RND * 150)
  CIRCLE (a%, a%), 4, 15
  DRAW "c15 bd4 br4 f15 "
  CIRCLE (b%, c%), 14, 15
  DRAW "bu11 br9 e15"
  CIRCLE (d%, a%), 4, 15
  CIRCLE (e%, f%), 1, 15
  CIRCLE (g%, f%), 1, 15
  DRAW "bl 70  bu 70 e15 f13 nl30 c14 d10 r20 u10 l20 r2 d10r2 u10r2 d10r2 u10 r2 d10 r2 u10 r2 d10 r2 u10 r2 d10"
  DRAW "c15 d15 g 10 "
  CIRCLE (b%, c%), 22, 4
  CIRCLE (b%, c%), 20, 4
  DRAW "c4 bh 15 b e 1 f28 bg2 h28"
  q% = b%
  w% = 350
  r% = b%
  COLOR 1
    DO
    FOR x% = 150 TO 300
        PSET (q%, x% + 40)
        PSET (q%, x% + 41)
        COLOR 4
        FOR dely% = 1 TO 400: NEXT dely%
        PRESET (q%, x% + 40)
        PRESET (q%, x% + 41)
    NEXT x%
    PSET (b%, 350)
    PSET (r%, 350)
    b% = b% + 1
    r% = r% - 1
    LOOP UNTIL INKEY$ = CHR$(27)
    END

SUB delay
FOR b = 1 TO 1000
NEXT b
END SUB

SUB delay1
FOR b = 1 TO 50
NEXT b
END SUB

SUB flash
rgb x, 30, 60, 60
FOR x = 60 TO 1 STEP -1
rgb 0, x, 6, 6
delay1
NEXT x

END SUB

SUB rgb (col, r, g, b)
OUT &H3C8, col    'Certain Color Number
OUT &H3C9, r    'Red Value of color
OUT &H3C9, g    'Green Value of color
OUT &H3C9, b    'Blue Value of color


END SUB


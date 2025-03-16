DECLARE SUB rgb (col!, r!, g!, b!)
DECLARE SUB delay ()
DECLARE SUB flash ()
CLS
SCREEN 12
flash
DRAW "c8 b l60 b u30 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c9 b u2 b l2 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c8 b u2 b l2 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c9 b u2 b l2 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
flash
SLEEP 1
DRAW "c2 b l85 b u75 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c1 b u2 b l2 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c2 b u2 b l2 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c1 b u2 b l2 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
flash
SLEEP 1
DRAW "c11 b r225 b d60 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c10 b u2 b l2 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c11 b u2 b l2 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c10 b u2 b l2 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
flash
SLEEP 1
DRAW "c6 b u150 b l50 d30 r30 d60 r30 u60 r30 u30 l90"
DRAW "c5 b d2 b r2 d30 r30 d60 r30 u60 r30 u30 l90"
DRAW "c4 b d2 b r2 d30 r30 d60 r30 u60 r30 u30 l90"
DRAW "c3 b d2 b r2 d30 r30 d60 r30 u60 r30 u30 l90"
flash
SLEEP 1
DRAW "c8 b d325 b l270 d30 r30 d60 r30 u60 r30 u30 l90"
DRAW "c7 b d2 b r2 d30 r30 d60 r30 u60 r30 u30 l90"
DRAW "c9 b d2 b r2 d30 r30 d60 r30 u60 r30 u30 l90"
DRAW "c13 b d2 b r2 d30 r30 d60 r30 u60 r30 u30 l90"
flash
SLEEP 1

SUB delay
FOR bbb = 1 TO 30
NEXT bbb
END SUB

SUB flash
rgb 0, 60, 60, 60
FOR x = 60 TO 1 STEP -1
rgb 0, x, x, x
delay
NEXT x
END SUB

SUB rgb (col, r, g, b)
OUT &H3C8, col    'Certain Color Number
OUT &H3C9, r    'Red Value of color
OUT &H3C9, g    'Green Value of color
OUT &H3C9, b    'Blue Value of color
END SUB


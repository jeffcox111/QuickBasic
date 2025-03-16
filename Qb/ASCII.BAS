CLS
COLOR 9
PRINT " UP = 0 + 72, DOWN = 0 + 80, LFT = 0 + 75, RGHT = 0 + 77"
PRINT " UPLFT = 0 + 71, UPRGHT = 0 + 73, DOWNLFT = 0 + 79, DOWNRGHT = 0 + 81"
COLOR 15
PRINT " Press ESC to STOP   (By the way, ESC = 27)"
WHILE b$ <> CHR$(27)
b$ = INKEY$
IF b$ <> "" THEN LOCATE 4, 1: PRINT b$; ASC(b$)
WEND



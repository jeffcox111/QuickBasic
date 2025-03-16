DECLARE SUB center (row, text$)
DECLARE SUB intro ()
DECLARE SUB menu ()
DECLARE SUB drawscreen (tim%)
DECLARE SUB instructions (nm$)
DECLARE SUB nam ()
DECLARE SUB game ()
DECLARE SUB score (nm$)
DECLARE SUB perfect ()
DECLARE SUB ending ()
DECLARE SUB ending2 ()
DIM SHARED nm$
DIM SHARED tim%
intro
nam
menu

SUB center (row, text$)
LOCATE row, 41 - LEN(text$) / 2
PRINT text$;
END SUB

SUB drawscreen (tim%)
3 CLS
SCREEN 12
LOCATE 1, 30
COLOR 1
PRINT "TYRANT SOFTWARE"
COLOR 8
LOCATE 1, 70
PRINT "X  Tyrant"
COLOR 15
LOCATE 1, 1
PRINT "SCORE: "; s%; "  / "; attempts%
IF attempts% + s% >= 40 THEN
perfect
END IF
IF attempts% = 20 THEN
score (nm$)
END IF
COLOR 8
LINE (150, 455)-(300, 300), 8, B
DRAW "bu1 l150 e75 f75"
PAINT (205, 250), 7, 8
LINE (177, 318)-(197, 336), 8, B
LINE (177, 382)-(197, 400), 8, B
LINE (257, 318)-(277, 336), 8, B
LINE (257, 382)-(277, 400), 8, B
LINE (207, 430)-(237, 455), 8, B
LINE (222, 430)-(222, 455), 8
PAINT (200, 318), 7, 8
LINE (400, 170)-(520, 455), 8, B
LINE (417, 254)-(437, 272), 8, B
LINE (481, 254)-(501, 272), 8, B
LINE (417, 350)-(437, 368), 8, B
LINE (481, 350)-(501, 368), 8, B
LINE (460, 430)-(460, 455), 8
LINE (445, 430)-(475, 455), 8, B
PAINT (401, 171), 7, 8
LINE (1, 455)-(640, 465), 2, BF
1
RANDOMIZE TIMER
a% = INT(RND * 26)

IF a% = 0 THEN
GOTO 1

ELSEIF a% = 1 THEN
a$ = "A"
d% = 97
ELSEIF a% = 2 THEN
a$ = "B"
d% = 98
ELSEIF a% = 3 THEN
a$ = "C"
d% = 99
ELSEIF a% = 4 THEN
a$ = "D"
d% = 100
ELSEIF a% = 5 THEN
a$ = "E"
d% = 101
ELSEIF a% = 6 THEN
a$ = "F"
d% = 102
ELSEIF a% = 7 THEN
a$ = "G"
d% = 103
ELSEIF a% = 8 THEN
a$ = "H"
d% = 104
ELSEIF a% = 9 THEN
a$ = "I"
d% = 105
ELSEIF a% = 10 THEN
a$ = "J"
d% = 106
ELSEIF a% = 11 THEN
a$ = "K"
d% = 107
ELSEIF a% = 12 THEN
a$ = "L"
d% = 108
ELSEIF a% = 13 THEN
a$ = "M"
d% = 109
ELSEIF a% = 14 THEN
a$ = "N"
d% = 110
ELSEIF a% = 15 THEN
a$ = "O"
d% = 111
ELSEIF a% = 16 THEN
a$ = "P"
d% = 112
ELSEIF a% = 17 THEN
a$ = "Q"
d% = 113
ELSEIF a% = 18 THEN
a$ = "R"
d% = 114
ELSEIF a% = 19 THEN
a$ = "S"
d% = 115
ELSEIF a% = 20 THEN
a$ = "T"
d% = 116
ELSEIF a% = 21 THEN
a$ = "U"
d% = 117
ELSEIF a% = 22 THEN
a$ = "V"
d% = 118
ELSEIF a% = 23 THEN
a$ = "W"
d% = 119
ELSEIF a% = 24 THEN
a$ = "X"
d% = 120
ELSEIF a% = 25 THEN
a$ = "Y"
d% = 121
ELSEIF a% = 26 THEN
a$ = "Z"
d% = 122
END IF
2
e = INT(RND * 8)
IF e = 0 THEN
GOTO 2
ELSEIF e = 1 THEN
b% = 17
c% = 62
ELSEIF e = 2 THEN
b% = 17
c% = 54
ELSEIF e = 3 THEN
b% = 23
c% = 62
ELSEIF e = 4 THEN
b% = 23
c% = 54
ELSEIF e = 5 THEN
b% = 21
c% = 24
ELSEIF e = 6 THEN
b% = 25
c% = 24
ELSEIF e = 7 THEN
b% = 21
c% = 34
ELSEIF e = 8 THEN
b% = 25
c% = 34
END IF
LOCATE b%, c%
COLOR 15
PRINT a$

TIMER ON
st = TIMER
WHILE TimePast < tim%
   TimePast = TIMER - st
IF INKEY$ = CHR$(d%) THEN
  s% = s% + 1
  GOTO 4
ELSEIF INKEY$ = CHR$(8) THEN
  LOCATE 3, 1
  PRINT "Your wish is my command."
  LOCATE 4, 1: LINE INPUT ; wish$
  IF wish$ = "end" THEN
    perfect
  ELSEIF wish$ = "points" THEN
    s% = s% + 10
  ELSE
    drawscreen (tim%)
  END IF
ELSEIF INKEY$ = CHR$(27) THEN
  menu
END IF
WEND
TIMER OFF
4
attempts% = attempts% + 1
TimePast = 0
GOTO 3


END SUB

SUB ending
CLS
SCREEN 12
CIRCLE (320, 240), 10, 4
PAINT (320, 240), 4, 4
CIRCLE (320, 240), 11, 15
CIRCLE (320, 240), 30, 15
PAINT (305, 240), 15, 15
CIRCLE (320, 240), 31, 4
CIRCLE (320, 240), 50, 4
PAINT (280, 240), 4, 4
CIRCLE (320, 240), 51, 15
CIRCLE (320, 240), 70, 15
PAINT (260, 240), 15, 15
CIRCLE (320, 240), 71, 4
CIRCLE (320, 240), 90, 4
PAINT (235, 240), 4, 4
WHILE INKEY$ = ""
SLEEP
WEND
CLS
DRAW "c4 bd92 bl200 nr5 u 185 r5 d185 "
PAINT (124, 240), 4, 4
COLOR 15
FOR i% = 640 TO 127 STEP -1
PSET (i% + 1, 239)
PSET (i% + 2, 238)
PSET (i% + 3, 237)
PSET (i% + 4, 236)
PSET (i% + 4, 237)
PSET (i% + 4, 238)
PSET (i% + 4, 239)
PSET (i%, 240)
PSET (i% + 1, 241)
PSET (i% + 2, 242)
PSET (i% + 3, 243)
PSET (i% + 4, 244)
PSET (i% + 4, 243)
PSET (i% + 4, 242)
PSET (i% + 4, 241)

FOR y% = i% + 4 TO i% + 28
PSET (y%, 240)
NEXT y%

PSET (i% + 24, 241)
PSET (i% + 25, 242)
PSET (i% + 26, 243)
PSET (i% + 27, 244)

PSET (i% + 26, 241)
PSET (i% + 27, 242)
PSET (i% + 28, 243)
PSET (i% + 29, 244)

PSET (i% + 28, 241)
PSET (i% + 29, 242)
PSET (i% + 30, 243)
PSET (i% + 31, 244)

PSET (i% + 24, 239)
PSET (i% + 25, 238)
PSET (i% + 26, 237)
PSET (i% + 27, 236)

PSET (i% + 26, 239)
PSET (i% + 27, 238)
PSET (i% + 28, 237)
PSET (i% + 29, 236)

PSET (i% + 28, 239)
PSET (i% + 29, 238)
PSET (i% + 30, 237)
PSET (i% + 31, 236)

PRESET (i% + 1, 239)
PRESET (i% + 2, 238)
PRESET (i% + 3, 237)
PRESET (i% + 4, 236)
PRESET (i% + 4, 237)
PRESET (i% + 4, 238)
PRESET (i% + 4, 239)
PRESET (i%, 240)
PRESET (i% + 1, 241)
PRESET (i% + 2, 242)
PRESET (i% + 3, 243)
PRESET (i% + 4, 244)
PRESET (i% + 4, 243)
PRESET (i% + 4, 242)
PRESET (i% + 4, 241)

PRESET (i% + 4, 240)
PRESET (i% + 5, 240)
PRESET (i% + 6, 240)
PRESET (i% + 7, 240)
PRESET (i% + 8, 240)
PRESET (i% + 9, 240)
PRESET (i% + 10, 240)
PRESET (i% + 11, 240)
PRESET (i% + 12, 240)
PRESET (i% + 13, 240)
PRESET (i% + 14, 240)
PRESET (i% + 15, 240)
PRESET (i% + 16, 240)
PRESET (i% + 17, 240)
PRESET (i% + 18, 240)
PRESET (i% + 19, 240)
PRESET (i% + 20, 240)
PRESET (i% + 21, 240)
PRESET (i% + 22, 240)
PRESET (i% + 23, 240)
PRESET (i% + 24, 240)
PRESET (i% + 25, 240)
PRESET (i% + 26, 240)
PRESET (i% + 27, 240)
PRESET (i% + 28, 240)

PRESET (i% + 24, 241)
PRESET (i% + 25, 242)
PRESET (i% + 26, 243)
PRESET (i% + 27, 244)

PRESET (i% + 26, 241)
PRESET (i% + 27, 242)
PRESET (i% + 28, 243)
PRESET (i% + 29, 244)

PRESET (i% + 28, 241)
PRESET (i% + 29, 242)
PRESET (i% + 30, 243)
PRESET (i% + 31, 244)

PRESET (i% + 24, 239)
PRESET (i% + 25, 238)
PRESET (i% + 26, 237)
PRESET (i% + 27, 236)

PRESET (i% + 26, 239)
PRESET (i% + 27, 238)
PRESET (i% + 28, 237)
PRESET (i% + 29, 236)

PRESET (i% + 28, 239)
PRESET (i% + 29, 238)
PRESET (i% + 30, 237)
PRESET (i% + 31, 236)

NEXT i%

FOR i% = 127 TO 127 STEP -1
PSET (i% + 1, 239)
PSET (i% + 2, 238)
PSET (i% + 3, 237)
PSET (i% + 4, 236)
PSET (i% + 4, 237)
PSET (i% + 4, 238)
PSET (i% + 4, 239)
PSET (i%, 240)
PSET (i% + 1, 241)
PSET (i% + 2, 242)
PSET (i% + 3, 243)
PSET (i% + 4, 244)
PSET (i% + 4, 243)
PSET (i% + 4, 242)
PSET (i% + 4, 241)

FOR y% = i% + 4 TO i% + 28
PSET (y%, 240)
NEXT y%


PSET (i% + 24, 241)
PSET (i% + 25, 242)
PSET (i% + 26, 243)
PSET (i% + 27, 244)

PSET (i% + 26, 241)
PSET (i% + 27, 242)
PSET (i% + 28, 243)
PSET (i% + 29, 244)

PSET (i% + 28, 241)
PSET (i% + 29, 242)
PSET (i% + 30, 243)
PSET (i% + 31, 244)

PSET (i% + 24, 239)
PSET (i% + 25, 238)
PSET (i% + 26, 237)
PSET (i% + 27, 236)

PSET (i% + 26, 239)
PSET (i% + 27, 238)
PSET (i% + 28, 237)
PSET (i% + 29, 236)

PSET (i% + 28, 239)
PSET (i% + 29, 238)
PSET (i% + 30, 237)
PSET (i% + 31, 236)
NEXT i%
COLOR 1
LOCATE 3, 20
PRINT "ÛßÜ ÜßÛ Ûßßß ÛßÜ Ûßßß Û   Û ßßÛßß Û": LOCATE , 20
PRINT "Û  Û  Û Ûßßß Û Û Ûßßß  Û Û    Û   Û": LOCATE , 20
PRINT "ß  ß  ß ßßßß ßß  ßßßß   ß   ßßßßß ßßßß": LOCATE , 20
COLOR 15
PRINT "              Archery": LOCATE , 20
WHILE INKEY$ = "": PLAY "df..gabag..ecdef..ddcde..c<a..>df..gabag...ecdefedc#<b>c#d..dd...": WEND
ending2
END SUB

SUB ending2
CLS
SCREEN 12
DRAW "c8"
DRAW "br 180 bu 230 r100 g220 f220 l100 h180 g180 l100 e 220 h220 r100 f180 e180"
DRAW "br 2 bu 2 r100 g220 f220 l100 h180 g180 l100 e 220 h220 r100 f180 e180"
DRAW "br 2   bu 2   r100 g220 f220 l100 h180 g180 l100 e 220 h220 r100 f180 e180"
DRAW "br 2   bu 2   r100 g220 f220 l100 h180 g180 l100 e 220 h220 r100 f180 e180"
DRAW "bl  8  bd  4  r100 g220 f220 l100 h180 g180 l100 e 220 h220 r100 f180 e180"
DRAW "bl 2   bu 2   r100 g220 f220 l100 h180 g180 l100 e 220 h220 r100 f180 e180"
DRAW "bl 2   bu 2   r100 g220 f220 l100 h180 g180 l100 e 220 h220 r100 f180 e180"
LOCATE 1, 34
PRINT "The TYRANT"
END
END SUB

SUB game
RANDOMIZE TIMER
location% = INT(RND * 5)

END SUB

SUB instructions (nm$)
CLS
COLOR 9
PRINT "Attention Captian "; nm$; ","
PRINT "    A fleet of Alien Warships has landed in the heart of the city."
PRINT "The Aliens have taken control of two of the major buildings downtown."
PRINT "It is your job to re-secure those buildings.  Good luck, "; nm$; "!!"
PRINT "                                            Thank You,"
PRINT "                                              The Mayor"
WHILE INKEY$ = "": SLEEP: WEND
CLS
PRINT "----to kill an alien----"
PRINT " "
PRINT "press the letter of the alien you wish to kill"
PRINT "your score will go up 1 point "
WHILE INKEY$ = "": SLEEP: WEND
menu
END SUB

SUB intro
SCREEN 12
FOR i% = 0 TO 640
   COLOR 13
   PSET (i%, 273)
   PSET (i%, 204)
   FOR delay% = 1 TO 100: NEXT delay%
NEXT i%
FOR x% = 0 TO 480
  PSET (332, x%)
  PSET (255, x%)
  FOR delay% = 1 TO 100: NEXT delay%
NEXT x%
DRAW "bu240 br64 c2 b l60 b u30 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c2 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c2 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c2 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"

COLOR 9
LOCATE 8, 9: PRINT "Tyrant"
LOCATE 9, 8: PRINT "Software"
LOCATE 10, 7: PRINT "Presents..."
LOCATE 20, 57: PRINT "a game by:"
LOCATE 22, 55: PRINT "Travis Larson &"
LOCATE 23, 58: PRINT "Jeff Cox "
LOCATE 25, 51: PRINT "with the special help of"
LOCATE 26, 57: PRINT "Michael Hughes"
WHILE INKEY$ = "": SLEEP: WEND
CLS
END SUB

SUB menu
CLS
COLOR 9
center 10, "1. Play Game"
center 11, "2. Instructions"
center 12, "3. Change Name"
center 13, "4. End"
center 15, "Your Selection: ": LINE INPUT ; sel$
IF sel$ = "1" THEN
  CLS
  drawscreen (tim%)
ELSEIF sel$ = "2" THEN
  instructions (nm$)
ELSEIF sel$ = "3" THEN
  nam
  menu
ELSEIF sel$ = "4" THEN
  ending
ELSE
  menu
END IF
END SUB

SUB nam
CLS
INPUT "What is your name"; nm$
11
PRINT " "
PRINT " "
PRINT " "
PRINT "Choose Level"
PRINT "1. Easy"
PRINT "2. Medium"
PRINT "3. Hard"
INPUT ">", lev$
IF lev$ = "1" THEN
tim% = 4
ELSEIF lev$ = "2" THEN
tim% = 2
ELSEIF lev$ = "3" THEN
tim% = 1
ELSE
CLS
GOTO 11
END IF
END SUB

SUB perfect
CLS
SCREEN 12
CIRCLE (640, 480), 250, 1
PAINT (639, 479), 1, 1
RANDOMIZE TIMER
a = INT(RND * 420)
b = INT(RND * 420)
c = INT(RND * 420)
d = INT(RND * 420)
e = INT(RND * 420)
f = INT(RND * 420)
g = INT(RND * 420)
h = INT(RND * 420)
i = INT(RND * 420)
j = INT(RND * 420)
k = INT(RND * 420)
l = INT(RND * 420)
m = INT(RND * 420)
n = INT(RND * 420)
o = INT(RND * 420)
p = INT(RND * 420)
q = INT(RND * 420)
r = INT(RND * 420)
s = INT(RND * 420)
t = INT(RND * 420)
u = INT(RND * 420)
v = INT(RND * 420)
w = INT(RND * 420)
x = INT(RND * 420)

aa = INT(RND * 430)
bb = INT(RND * 430)
cc = INT(RND * 430)
dd = INT(RND * 430)
ee = INT(RND * 430)
ff = INT(RND * 430)
gg = INT(RND * 430)
hh = INT(RND * 430)
ii = INT(RND * 430)
jj = INT(RND * 430)
kk = INT(RND * 430)
ll = INT(RND * 430)
mm = INT(RND * 430)
nn = INT(RND * 430)
oo = INT(RND * 430)
pp = INT(RND * 430)
qq = INT(RND * 430)
rr = INT(RND * 430)
ss = INT(RND * 430)
tt = INT(RND * 430)
uu = INT(RND * 430)
vv = INT(RND * 430)
ww = INT(RND * 430)
xx = INT(RND * 430)
PSET (a, aa)
PSET (b, bb)
PSET (c, cc)
PSET (d, dd)
PSET (e, ee)
PSET (f, ff)
PSET (g, gg)
PSET (h, hh)
PSET (i, ii)
PSET (j, jj)
PSET (k, kk)
PSET (l, ll)
PSET (m, mm)
PSET (n, nn)
PSET (o, oo)
PSET (p, pp)
PSET (q, qq)
PSET (r, rr)
PSET (s, ss)
PSET (t, tt)
PSET (u, uu)
PSET (v, vv)
PSET (w, ww)
PSET (x, xx)


FOR i% = 1 TO 330
PSET (i% + 56, i%)
PSET (i% + 57, i%)
PSET (i% + 58, i%)
PSET (i% + 59, i%)
PSET (i% + 60, i%)
PSET (i% + 61, i%)
PSET (i% + 62, i% + 1)
PSET (i% + 63, i% + 1)
PSET (i% + 64, i% + 1)
PSET (i% + 65, i% + 1)
PSET (i% + 66, i% + 2)
PSET (i% + 67, i% + 2)
PSET (i% + 68, i% + 2)
PSET (i% + 69, i% + 2)
PSET (i% + 70, i% + 3)
PSET (i% + 71, i% + 3)
PSET (i% + 72, i% + 3)
PSET (i% + 73, i% + 3)
PSET (i% + 74, i% + 4)
PSET (i% + 75, i% + 4)
PSET (i% + 76, i% + 4)
PSET (i% + 77, i% + 4)

PSET (i% + 55, i%)
PSET (i% + 54, i%)
PSET (i% + 53, i%)
PSET (i% + 52, i%)
PSET (i% + 51, i%)
PSET (i% + 50, i%)
PSET (i% + 49, i% + 1)
PSET (i% + 48, i% + 1)
PSET (i% + 47, i% + 1)
PSET (i% + 46, i% + 1)
PSET (i% + 45, i% + 2)
PSET (i% + 44, i% + 2)
PSET (i% + 43, i% + 2)
PSET (i% + 42, i% + 2)
PSET (i% + 41, i% + 3)
PSET (i% + 40, i% + 3)
PSET (i% + 39, i% + 3)
PSET (i% + 38, i% + 3)
PSET (i% + 37, i% + 4)
PSET (i% + 36, i% + 4)
PSET (i% + 35, i% + 4)
PSET (i% + 34, i% + 4)
FOR y% = i% + 6 TO i% + 33
PSET (y%, i% + 5)
NEXT y%

PSET (i% + 5, i% + 6)
PSET (i% + 4, i% + 6)
PSET (i% + 3, i% + 6)
PSET (i% + 2, i% + 7)
PSET (i% + 1, i% + 7)
PSET (i%, i% + 8)
PSET (i% + 1, i% + 9)
PSET (i% + 2, i% + 9)
PSET (i% + 3, i% + 10)
PSET (i% + 4, i% + 10)
PSET (i% + 5, i% + 10)

FOR y% = i% + 78 TO i% + 105
PSET (y%, i% + 5)
NEXT y%

PSET (i% + 106, i% + 6)
PSET (i% + 107, i% + 6)
PSET (i% + 108, i% + 6)
PSET (i% + 109, i% + 7)
PSET (i% + 110, i% + 7)
PSET (i% + 111, i% + 8)
PSET (i% + 110, i% + 9)
PSET (i% + 109, i% + 9)
PSET (i% + 108, i% + 10)
PSET (i% + 107, i% + 10)
PSET (i% + 106, i% + 10)

FOR y% = i% + 5 TO i% + 106
PSET (y%, i% + 11)
NEXT y%
FOR delay% = 1 TO 1000: NEXT delay%
'END
PRESET (i% + 56, i%)
PRESET (i% + 57, i%)
PRESET (i% + 58, i%)
PRESET (i% + 59, i%)
PRESET (i% + 60, i%)
PRESET (i% + 61, i%)
PRESET (i% + 62, i% + 1)
PRESET (i% + 63, i% + 1)
PRESET (i% + 64, i% + 1)
PRESET (i% + 65, i% + 1)
PRESET (i% + 66, i% + 2)
PRESET (i% + 67, i% + 2)
PRESET (i% + 68, i% + 2)
PRESET (i% + 69, i% + 2)
PRESET (i% + 70, i% + 3)
PRESET (i% + 71, i% + 3)
PRESET (i% + 72, i% + 3)
PRESET (i% + 73, i% + 3)
PRESET (i% + 74, i% + 4)
PRESET (i% + 75, i% + 4)
PRESET (i% + 76, i% + 4)
PRESET (i% + 77, i% + 4)
                
PRESET (i% + 55, i%)
PRESET (i% + 54, i%)
PRESET (i% + 53, i%)
PRESET (i% + 52, i%)
PRESET (i% + 51, i%)
PRESET (i% + 50, i%)
PRESET (i% + 49, i% + 1)
PRESET (i% + 48, i% + 1)
PRESET (i% + 47, i% + 1)
PRESET (i% + 46, i% + 1)
PRESET (i% + 45, i% + 2)
PRESET (i% + 44, i% + 2)
PRESET (i% + 43, i% + 2)
PRESET (i% + 42, i% + 2)
PRESET (i% + 41, i% + 3)
PRESET (i% + 40, i% + 3)
PRESET (i% + 39, i% + 3)
PRESET (i% + 38, i% + 3)
PRESET (i% + 37, i% + 4)
PRESET (i% + 36, i% + 4)
PRESET (i% + 35, i% + 4)
PRESET (i% + 34, i% + 4)
PRESET (i% + 33, i% + 5)
PRESET (i% + 32, i% + 5)
PRESET (i% + 31, i% + 5)
PRESET (i% + 30, i% + 5)
PRESET (i% + 29, i% + 5)
PRESET (i% + 28, i% + 5)
PRESET (i% + 27, i% + 5)
PRESET (i% + 26, i% + 5)
PRESET (i% + 25, i% + 5)
PRESET (i% + 24, i% + 5)
PRESET (i% + 23, i% + 5)
PRESET (i% + 22, i% + 5)
PRESET (i% + 21, i% + 5)
PRESET (i% + 20, i% + 5)
PRESET (i% + 19, i% + 5)
PRESET (i% + 18, i% + 5)
PRESET (i% + 17, i% + 5)
PRESET (i% + 16, i% + 5)
PRESET (i% + 15, i% + 5)
PRESET (i% + 14, i% + 5)
PRESET (i% + 13, i% + 5)
PRESET (i% + 12, i% + 5)
PRESET (i% + 11, i% + 5)
PRESET (i% + 10, i% + 5)
PRESET (i% + 9, i% + 5)
PRESET (i% + 8, i% + 5)
PRESET (i% + 7, i% + 5)
PRESET (i% + 6, i% + 5)
PRESET (i% + 5, i% + 6)
PRESET (i% + 4, i% + 6)
PRESET (i% + 3, i% + 6)
PRESET (i% + 2, i% + 7)
PRESET (i% + 1, i% + 7)
PRESET (i%, i% + 8)
PRESET (i% + 1, i% + 9)
PRESET (i% + 2, i% + 9)
PRESET (i% + 3, i% + 10)
PRESET (i% + 4, i% + 10)
PRESET (i% + 5, i% + 10)


PRESET (i% + 78, i% + 5)
PRESET (i% + 79, i% + 5)
PRESET (i% + 80, i% + 5)
PRESET (i% + 81, i% + 5)
PRESET (i% + 82, i% + 5)
PRESET (i% + 83, i% + 5)
PRESET (i% + 84, i% + 5)
PRESET (i% + 85, i% + 5)
PRESET (i% + 86, i% + 5)
PRESET (i% + 87, i% + 5)
PRESET (i% + 88, i% + 5)
PRESET (i% + 89, i% + 5)
PRESET (i% + 90, i% + 5)
PRESET (i% + 91, i% + 5)
PRESET (i% + 92, i% + 5)
PRESET (i% + 93, i% + 5)
PRESET (i% + 94, i% + 5)
PRESET (i% + 95, i% + 5)
PRESET (i% + 96, i% + 5)
PRESET (i% + 97, i% + 5)
PRESET (i% + 98, i% + 5)
PRESET (i% + 99, i% + 5)
PRESET (i% + 100, i% + 5)
PRESET (i% + 101, i% + 5)
PRESET (i% + 102, i% + 5)
PRESET (i% + 103, i% + 5)
PRESET (i% + 104, i% + 5)
PRESET (i% + 105, i% + 5)
PRESET (i% + 106, i% + 6)
PRESET (i% + 107, i% + 6)
PRESET (i% + 108, i% + 6)
PRESET (i% + 109, i% + 7)
PRESET (i% + 110, i% + 7)
PRESET (i% + 111, i% + 8)
PRESET (i% + 110, i% + 9)
PRESET (i% + 109, i% + 9)
PRESET (i% + 108, i% + 10)
PRESET (i% + 107, i% + 10)
PRESET (i% + 106, i% + 10)
q% = i% + 11
PRESET (i% + 106, q%)
PRESET (i% + 105, q%)
PRESET (i% + 104, q%)
PRESET (i% + 103, q%)
PRESET (i% + 102, q%)
PRESET (i% + 101, q%)
PRESET (i% + 100, q%)
PRESET (i% + 99, q%)
PRESET (i% + 98, q%)
PRESET (i% + 97, q%)
PRESET (i% + 96, q%)
PRESET (i% + 95, q%)
PRESET (i% + 94, q%)
PRESET (i% + 93, q%)
PRESET (i% + 92, q%)
PRESET (i% + 91, q%)
PRESET (i% + 90, q%)
PRESET (i% + 89, q%)
PRESET (i% + 88, q%)
PRESET (i% + 87, q%)
PRESET (i% + 86, q%)
PRESET (i% + 85, q%)
PRESET (i% + 84, q%)
PRESET (i% + 83, q%)
PRESET (i% + 82, q%)
PRESET (i% + 81, q%)
PRESET (i% + 80, q%)
PRESET (i% + 79, q%)
PRESET (i% + 78, q%)
PRESET (i% + 77, q%)
PRESET (i% + 76, q%)
PRESET (i% + 75, q%)
PRESET (i% + 76, q%)
PRESET (i% + 75, q%)
PRESET (i% + 74, q%)
PRESET (i% + 73, q%)
PRESET (i% + 72, q%)
PRESET (i% + 71, q%)
PRESET (i% + 70, q%)
PRESET (i% + 69, q%)
PRESET (i% + 68, q%)
PRESET (i% + 67, q%)
PRESET (i% + 66, q%)
PRESET (i% + 65, q%)
PRESET (i% + 64, q%)
PRESET (i% + 63, q%)
PRESET (i% + 62, q%)
PRESET (i% + 61, q%)
PRESET (i% + 60, q%)
PRESET (i% + 59, q%)
PRESET (i% + 58, q%)
PRESET (i% + 57, q%)
PRESET (i% + 56, q%)
PRESET (i% + 55, q%)
PRESET (i% + 54, q%)
PRESET (i% + 53, q%)
PRESET (i% + 52, q%)
PRESET (i% + 51, q%)
PRESET (i% + 50, q%)
PRESET (i% + 49, q%)
PRESET (i% + 48, q%)
PRESET (i% + 47, q%)
PRESET (i% + 46, q%)
PRESET (i% + 45, q%)
PRESET (i% + 44, q%)
PRESET (i% + 43, q%)
PRESET (i% + 42, q%)
PRESET (i% + 41, q%)
PRESET (i% + 40, q%)
PRESET (i% + 39, q%)
PRESET (i% + 38, q%)
PRESET (i% + 37, q%)
PRESET (i% + 36, q%)
PRESET (i% + 35, q%)
PRESET (i% + 34, q%)
PRESET (i% + 33, q%)
PRESET (i% + 32, q%)
PRESET (i% + 31, q%)
PRESET (i% + 30, q%)
PRESET (i% + 29, q%)
PRESET (i% + 28, q%)
PRESET (i% + 27, q%)
PRESET (i% + 26, q%)
PRESET (i% + 25, q%)
PRESET (i% + 24, q%)
PRESET (i% + 23, q%)
PRESET (i% + 22, q%)
PRESET (i% + 21, q%)
PRESET (i% + 20, q%)
PRESET (i% + 19, q%)
PRESET (i% + 18, q%)
PRESET (i% + 17, q%)
PRESET (i% + 16, q%)
PRESET (i% + 15, q%)
PRESET (i% + 14, q%)
PRESET (i% + 13, q%)
PRESET (i% + 12, q%)
PRESET (i% + 11, q%)
PRESET (i% + 10, q%)
PRESET (i% + 9, q%)
PRESET (i% + 8, q%)
PRESET (i% + 7, q%)
PRESET (i% + 6, q%)
PRESET (i% + 5, q%)
NEXT i%

CLS
LOCATE 10, 3
PRINT "You have destory the Alien Invasion"
WHILE INKEY$ = "": PLAY "o2c...g. > c.....l16e - l4d...... < c..g > c...ea......ab > c...d...efg....efg...a.b. > c....": WEND
CLS
menu
END SUB

SUB score (nm$)
WHILE INKEY$ = ""
LOCATE 15, 25
PRINT "Way to go " + nm$
SLEEP
WEND
menu

END SUB


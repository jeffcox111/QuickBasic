
CLS : SCREEN 13: LOCATE 12, 1: PRINT "            COMPUWARE PRESENTS "
SLEEP 1: SLEEP 1: CLS : SCREEN 13: LOCATE 12, 1: PRINT "          A MARK LEARY CREATION "; ""
SLEEP 1: SLEEP 1: CLS : SCREEN 13: LOCATE 12, 1: PRINT
SLEEP 1: CLS : SCREEN 13: COLOR 4: DRAW "C4BL120BU70D25R10U15F15E15D15R10U25L10G15H15L10"
DRAW "BD25BL8U5L4U15R4U5L17D5R4D15L4D5R17"
DRAW "BR136BD45"

DRAW "BL70BU70D25R10U15F15E15D15R10U25L10G15H15L10"

DRAW "BR58BD7D11F7R11E7U11H7L11G7"
DRAW "BR34BU7D25R10U10F10R10H10E5U5H5L20"
DRAW "BR34D10R10D15R10U15R10U10L30"
DRAW "BR37BD10D15R10U10R10D10R10U15H10L10G10"
DRAW "BU10BR37D25R20U10L10U15L10"
DRAW "BD35BL245D25R10U15F15R10H15E10L10G10U10L10"
DRAW "BR39BD7D11F7R11E7U11H7L11G7"
DRAW "BR34BU7D25R10U15F15E15D15R10U25L10G15H15L10"
DRAW "BR58D25R20E5U3H5E5U2H5L20"
DRAW "BR33BD10D15R10U10R10D10R10U15H10L10G10"
DRAW "BR34BU10D10R10D15R10U15R10U10L30"

FOR I = 1 TO 40000: NEXT I
SCREEN 12: CLS : PRINT : PRINT : PRINT "                        Please Register This Game "
PRINT : PRINT : PRINT "If your like this game please send 8$ to:"
PRINT : PRINT "                                 Mark Leary"
PRINT "                                 12 Maple Pond Ln."
PRINT "                                 Duxbury, MA 02332"
PRINT ""
PRINT : PRINT : PRINT "If you register this game you will receive FREE upgrades"
PRINT "and other FREE shareware"
LOCATE 23, 18: PRINT "Press any key to begin the action"
SLEEP
BEEP
1 CLS : COLOR 7: SCREEN 13: LOCATE 1, 1: PRINT " SELECT YOUR CHARACTER PLAYER 1..."
SCREEN 13: LOCATE 23, 1: PRINT "   PRESS THE NUMBER OF YOUR CHARACTER"
LOCATE 7, 1: SCREEN 13: COLOR 1: PRINT "  JOHNNY   KANO           SUB   SONYA "
LOCATE 8, 1: SCREEN 13: PRINT "   CAGE                  ZERO "
LOCATE 15, 1: SCREEN 13: PRINT "          RAYDEN  LIU    SCORP-"; ""
LOCATE 16, 1: SCREEN 13: PRINT "                  KANG    ION"
DRAW "BL150BU75d65r60d65R180U65R60U65L120BL60L120BR60D130R60U130BR60D130R60U130D65L180 "
LOCATE 3, 1: SCREEN 13: PRINT "     1      2              3    4 "; ""
LOCATE 21, 1: SCREEN 13: PRINT "            5       6      7"
 LOCATE 24, 1: INPUT "1- ", C
IF C = 1 THEN CHAR1$ = "JOHNNY CAGE": GOTO 2
IF C = 2 THEN CHAR1$ = "KANO": GOTO 2
IF C = 3 THEN CHAR1$ = "SUB ZERO": GOTO 2
IF C = 4 THEN CHAR1$ = "SONYA": GOTO 2
IF C = 5 THEN CHAR1$ = "RAYDEN": GOTO 2
IF C = 6 THEN CHAR1$ = "LIU KANG": GOTO 2
IF C = 7 THEN CHAR1$ = "SCORPION": C = 10: GOTO 2
LOCATE 24, 1: PRINT "INVALID CHARACTER "
LOCATE 25, 1: PRINT "YOU MUST SELECT A # FROM 1 TO 7": SLEEP 2
GOTO 1
2 BEEP
3 CLS : COLOR 7: SCREEN 13: LOCATE 1, 1: PRINT " SELECT YOUR CHARACTER PLAYER 2..."
SCREEN 13: LOCATE 23, 1: PRINT "   PRESS THE NUMBER OF YOUR CHARACTER"
LOCATE 7, 1: SCREEN 13: COLOR 4: PRINT "  JOHNNY   KANO           SUB   SONYA "
LOCATE 8, 1: SCREEN 13: PRINT "   CAGE                  ZERO "
LOCATE 15, 1: SCREEN 13: PRINT "          RAYDEN  LIU    SCORP-"; ""
LOCATE 16, 1: SCREEN 13: PRINT "                  KANG    ION"
DRAW "BL150BU75d65r60d65R180U65R60U65L120BL60L120BR60D130R60U130BR60D130R60U130D65L180 "
LOCATE 3, 1: SCREEN 13: PRINT "     1      2              3    4 "; ""
LOCATE 21, 1: SCREEN 13: PRINT "            5       6      7"
LOCATE 24, 1: INPUT "2- ", C2
IF C2 = 1 THEN CHAR2$ = "JOHNNY CAGE": GOTO 4
IF C2 = 2 THEN CHAR2$ = "KANO": GOTO 4
IF C2 = 3 THEN CHAR2$ = "SUB ZERO": GOTO 4
IF C2 = 4 THEN CHAR2$ = "SONYA": GOTO 4
IF C2 = 5 THEN CHAR2$ = "RAYDEN": GOTO 4
IF C2 = 6 THEN CHAR2$ = "LIU KANG": GOTO 4
IF C2 = 7 THEN CHAR2$ = "SCORPION": C2 = 10: GOTO 4
LOCATE 24, 1: PRINT "INVALID CHARACTER "
LOCATE 25, 1: PRINT "YOU MUST SELECT A # FROM 1 TO 7": SLEEP 2
GOTO 3

4     IF CHAR2$ = CHAR1$ THEN CLS : PRINT : PRINT "YOU CAN'T BOTH BE THE SAME PERSON": SLEEP 2: GOTO 1
        R = 1: RC1 = 0
     
 SCREEN 13: CLS
PRINT " Player 1                Player 2"
PRINT
PRINT "A - Forward             6 - Forward"
PRINT "D - Back                4 - Back"
PRINT "W - Jump                8 - Jump"
PRINT "X - Duck                2 - Duck"
PRINT "R - Super Jump          9 - Super Jump "
PRINT "T - Punch               + - Punch "
PRINT "G - Kick                - - Kick"
PRINT "V - Jump Kick           * - Jump Kick"
PRINT "F - Special Move        / - Special Move"
PRINT : PRINT "Make sure Num Lock is ON"

PRINT : PRINT : PRINT "      Press any key to continue..."
SLEEP
   CLS : PRINT : PRINT "               ROUND 1": SLEEP 1: SLEEP 1
5 SCREEN 13: CLS : PAINT (5, 5), 9: LSTE = 50: WSTE = 50: L = 0: W = 0: COLOR 246: LINE (0, 101)-(600, 800), , BF: COLOR 8: PSET (3, 100): PSET (4, 99): PSET (5, 98): PSET (6, 97): PSET (7, 96): LINE (7, 95)-(7, 6): PSET (6, 5): PSET (5, 4): PSET (4, 3): PSET (3, 2): PSET (2, 1): PSET (1, 0)
 PSET (30, 100): PSET (29, 99): PSET (28, 98): PSET (27, 97): PSET (26, 96): PSET (25, 95): LINE (25, 94)-(25, 6): PSET (26, 5): PSET (27, 4): PSET (28, 3): PSET (29, 2): PSET (30, 1): PSET (31, 0): LINE (1, 0)-(31, 0): LINE (0, 101)-(31, 101): PAINT (15, 3), 8
 COLOR 8: PSET (320 - 3, 100): PSET (320 - 4, 99): PSET (320 - 5, 98): PSET (320 - 6, 97): PSET (320 - 7, 96): LINE (320 - 7, 95)-(320 - 7, 6): PSET (320 - 6, 5): PSET (320 - 5, 4): PSET (320 - 4, 3): PSET (320 - 3, 2): PSET (320 - 2, 1): PSET (320 - 1, 0)
 PSET (320 - 30, 100): PSET (320 - 29, 99): PSET (320 - 28, 98): PSET (320 - 27, 97): PSET (320 - 26, 96): PSET (320 - 25, 95): LINE (320 - 25, 94)-(320 - 25, 6): PSET (320 - 26, 5): PSET (320 - 27, 4): PSET (320 - 28, 3): PSET (320 - 29, 2): PSET (320 - 30, 1): PSET (320 - 31, 0): LINE (320 - 1, 0)-(320 - 31, 0): LINE (320 - 0, 101)-(320 - 31, 101): PAINT (320 - 15, 3), 8
 COLOR 0: LINE (0, 101)-(600, 101): COLOR 1
10
IF WSTE = 2 THEN LOCATE 1, 12: PRINT "    PREPARE TO DIE"
IF LSTE = 2 THEN LOCATE 1, 12: PRINT "    PREPARE TO DIE"
IF WSTE <= 0 THEN GOTO 800:
IF LSTE <= 0 THEN GOTO 900:
COLOR C2: LOCATE 17, 8: PRINT CHAR1$; "'S STRENGTH- "
COLOR 7: LINE (255, 128)-(305, 134), 7, BF
COLOR C2: LINE (255, 128)-(255 + LSTE, 134), C2, BF
 COLOR C: LOCATE 19, 1: PRINT CHAR2$; "'S STRENGTH- "
COLOR 7:    LINE (200, 145)-(250, 151), 7, BF
    LINE (200, 145)-(200 + WSTE, 151), C, BF
    COLOR C
    
20 LINE (105 + W, 100)-(110 + W, 80)
30 LINE (110 + W, 80)-(115 + W, 100)
40 LINE (110 + W, 80)-(110 + W, 72)
50 LINE (110 + W, 72)-(113 + W, 79)
60 LINE (113 + W, 79)-(116 + W, 73)
70 CIRCLE (110 + W, 68), 4

          COLOR C2
 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4


75 M$ = INKEY$
80 IF M$ = "+" THEN GOTO 5000
90 IF M$ = "-" THEN GOTO 6000
100 IF M$ = "*" THEN GOTO 7000
110 IF M$ = "6" THEN GOTO 8000
120 IF M$ = "4" THEN GOTO 9000
130 IF M$ = "/" THEN GOTO 10000
140 IF M$ = "2" THEN GOTO 11000
150 IF M$ = "8" THEN GOTO 12000
160 IF M$ = "9" THEN GOTO 13000
170 IF M$ = "T" OR M$ = "t" THEN GOTO 25000
180 IF M$ = "g" OR M$ = "G" THEN GOTO 26000
190 IF M$ = "V" OR M$ = "v" THEN GOTO 27000
200 IF M$ = "D" OR M$ = "d" THEN GOTO 29000
210 IF M$ = "A" OR M$ = "a" THEN GOTO 28000
220 IF M$ = "F" OR M$ = "f" THEN GOTO 210000
230 IF M$ = "X" OR M$ = "x" THEN GOTO 211000
240 IF M$ = "w" OR M$ = "W" THEN GOTO 212000
250 IF M$ = "R" OR M$ = "r" THEN GOTO 213000
GOTO 75

800

SOUND 100, 3
SOUND 50, 2


CLS : IF R <> 3 THEN GOTO 850
IF RC1 = 7 OR RC1 = 3 THEN L$ = CHAR1$
IF RC1 = 7 OR RC1 = 3 THEN W$ = CHAR2$ ELSE L$ = CHAR2$: W$ = CHAR1$
PRINT "        "; L$; " LOSSED THE MATCH"
PRINT
PRINT "          "; W$; " WINS"
SLEEP 1: SLEEP 1: SLEEP 1
GOTO 900000
850  PRINT "          "; CHAR1$; " WINS ROUND "; R
SLEEP 1: SLEEP 1: SLEEP 1
RC1 = RC1 + 1
IF R = 3 THEN GOTO 800
R = R + 1: CLS : PRINT : PRINT "              ROUND "; R
SLEEP 1: SLEEP 1
GOTO 5


900

SOUND 100, 3
SOUND 50, 2

CLS : IF R <> 3 THEN GOTO 950
IF RC1 = 15 OR RC1 = 11 THEN L$ = CHAR2$: W$ = CHAR1$ ELSE W$ = CHAR2$: L$ = CHAR1$
PRINT "       "; L$; " LOSSED THE MATCH"
PRINT
PRINT "         "; W$; " WINS"
SLEEP 1: SLEEP 1: SLEEP 1
GOTO 900000
950   PRINT "          "; CHAR2$; " WINS ROUND "; R
SLEEP 1: SLEEP 1: SLEEP 1:
RC1 = RC1 + 5
CLS : R = R + 1
PRINT : PRINT "                 ROUND "; R
    SLEEP 1: SLEEP 1
GOTO 5

5000
'PUNCH
   COLOR 9
 LINE (105 + W, 100)-(110 + W, 80)
 LINE (110 + W, 80)-(115 + W, 100)
 LINE (110 + W, 80)-(110 + W, 72)
 LINE (110 + W, 72)-(113 + W, 79)
 LINE (113 + W, 79)-(116 + W, 73)
 CIRCLE (110 + W, 68), 4
  
            COLOR C
   LINE (105 + W, 100)-(110 + W, 80)
   LINE (110 + W, 80)-(115 + W, 100)
   LINE (110 + W, 80)-(110 + W, 72)
   LINE (110 + W, 72)-(117 + W, 74)
   LINE (117 + W, 74)-(125 + W, 73)
   CIRCLE (110 + W, 68), 4
   FOR I = 1 TO 475: NEXT I
  
   COLOR 9
   LINE (105 + W, 100)-(110 + W, 80)
   LINE (110 + W, 80)-(115 + W, 100)
   LINE (110 + W, 80)-(110 + W, 72)
   LINE (110 + W, 72)-(117 + W, 74)
   LINE (117 + W, 74)-(125 + W, 73)
   CIRCLE (110 + W, 68), 4
    COLOR C
IF W - L >= 80 AND W - L <= 90 THEN GOTO 500000
   GOTO 10

6000
'KICK
                 
   COLOR 9
 LINE (105 + W, 100)-(110 + W, 80)
 LINE (110 + W, 80)-(115 + W, 100)
 LINE (110 + W, 80)-(110 + W, 72)
 LINE (110 + W, 72)-(113 + W, 79)
 LINE (113 + W, 79)-(116 + W, 73)
 CIRCLE (110 + W, 68), 4
                 
                 
                 
                 
                  COLOR C
   LINE (106 + W, 100)-(110 + W, 80)
   LINE (110 + W, 80)-(120 + W, 82)
   LINE (120 + W, 82)-(122 + W, 94)
   LINE (110 + W, 80)-(110 + W, 72)
   LINE (110 + W, 72)-(113 + W, 79)
   LINE (113 + W, 79)-(116 + W, 73)
   CIRCLE (110 + W, 68), 4
   FOR h = 1 TO 650: NEXT h
        COLOR 9
   
   LINE (110 + W, 80)-(120 + W, 82)
   LINE (120 + W, 82)-(122 + W, 94)
  
  
          COLOR C
        LINE (110 + W, 80)-(135 + W, 82)
        FOR Q = 1 TO 450: NEXT Q
        COLOR 9
   LINE (106 + W, 100)-(110 + W, 80)
   LINE (110 + W, 80)-(120 + W, 82)
   LINE (120 + W, 82)-(122 + W, 94)
   LINE (110 + W, 80)-(110 + W, 72)
   LINE (110 + W, 72)-(113 + W, 79)
   LINE (113 + W, 79)-(116 + W, 73)
   CIRCLE (110 + W, 68), 4
       LINE (110 + W, 80)-(135 + W, 82)
   COLOR C
   IF W - L >= 75 AND W - L <= 90 THEN GOTO 500100
   GOTO 10

7000
'JUMPKICK

   COLOR 9
 LINE (105 + W, 100)-(110 + W, 80)
 LINE (110 + W, 80)-(115 + W, 100)
 LINE (110 + W, 80)-(110 + W, 72)
 LINE (110 + W, 72)-(113 + W, 79)
 LINE (113 + W, 79)-(116 + W, 73)
 CIRCLE (110 + W, 68), 4

        COLOR C
   LINE (109 + W, 80)-(110 + W, 60)
   LINE (110 + W, 60)-(133 + W, 62)
   LINE (110 + W, 60)-(110 + W, 52)
   LINE (110 + W, 52)-(113 + W, 59)
   LINE (113 + W, 59)-(116 + W, 53)
   CIRCLE (110 + W, 48), 4
   FOR A = 1 TO 750: NEXT A
          COLOR 9
   LINE (109 + W, 80)-(110 + W, 60)
   LINE (110 + W, 60)-(133 + W, 62)
   LINE (110 + W, 60)-(110 + W, 52)
   LINE (110 + W, 52)-(113 + W, 59)
   LINE (113 + W, 59)-(116 + W, 53)
   CIRCLE (110 + W, 48), 4
  
    COLOR C
    IF W - L >= 80 AND W - L <= 90 THEN GOTO 500300
   GOTO 10
8000
'WALK FORWARD


   COLOR 9
 LINE (105 + W, 100)-(110 + W, 80)
 LINE (110 + W, 80)-(115 + W, 100)
 LINE (110 + W, 80)-(110 + W, 72)
 LINE (110 + W, 72)-(113 + W, 79)
 LINE (113 + W, 79)-(116 + W, 73)
 CIRCLE (110 + W, 68), 4

           COLOR C
 LINE (110 + W, 100)-(110 + W, 80)
 LINE (110 + W, 80)-(115 + W, 100)
 LINE (110 + W, 80)-(110 + W, 72)
 LINE (110 + W, 72)-(113 + W, 79)
 LINE (113 + W, 79)-(116 + W, 73)
 CIRCLE (110 + W, 68), 4
FOR B = 1 TO 350: NEXT B
     COLOR 9
 LINE (110 + W, 100)-(110 + W, 80)
 LINE (110 + W, 80)-(115 + W, 100)
 LINE (110 + W, 80)-(110 + W, 72)
 LINE (110 + W, 72)-(113 + W, 79)
 LINE (113 + W, 79)-(116 + W, 73)
 CIRCLE (110 + W, 68), 4
          COLOR C

W = W + 5
IF W >= 160 THEN W = 155
GOTO 10
9000
'WALK BACKWARD


   COLOR 9
 LINE (105 + W, 100)-(110 + W, 80)
 LINE (110 + W, 80)-(115 + W, 100)
 LINE (110 + W, 80)-(110 + W, 72)
 LINE (110 + W, 72)-(113 + W, 79)
 LINE (113 + W, 79)-(116 + W, 73)
 CIRCLE (110 + W, 68), 4

          COLOR C
 LINE (105 + W, 100)-(110 + W, 80)
 LINE (110 + W, 80)-(110 + W, 100)
 LINE (110 + W, 80)-(110 + W, 72)
 LINE (110 + W, 72)-(113 + W, 79)
 LINE (113 + W, 79)-(116 + W, 73)
 CIRCLE (110 + W, 68), 4
FOR d = 1 TO 350: NEXT d
          COLOR 9
 LINE (105 + W, 100)-(110 + W, 80)
 LINE (110 + W, 80)-(110 + W, 100)
 LINE (110 + W, 80)-(110 + W, 72)
 LINE (110 + W, 72)-(113 + W, 79)
 LINE (113 + W, 79)-(116 + W, 73)
 CIRCLE (110 + W, 68), 4

      COLOR 3
W = W - 5
IF W <= -70 THEN W = -65
GOTO 10

10000
'SPECIAL MOVE
   IF W >= 105 THEN GOTO 10
   COLOR 9
 LINE (105 + W, 100)-(110 + W, 80)
 LINE (110 + W, 80)-(115 + W, 100)
 LINE (110 + W, 80)-(110 + W, 72)
 LINE (110 + W, 72)-(113 + W, 79)
 LINE (113 + W, 79)-(116 + W, 73)
 CIRCLE (110 + W, 68), 4

       COLOR C

LINE (105 + W, 95)-(125 + W, 90)
LINE (105 + W, 85)-(125 + W, 90)
LINE (125 + W, 90)-(135 + W, 90)
CIRCLE (139 + W, 90), 4
FOR F = 1 TO 650: NEXT F

       COLOR 9
LINE (105 + W, 95)-(125 + W, 90)
LINE (105 + W, 85)-(125 + W, 90)
LINE (125 + W, 90)-(135 + W, 90)
CIRCLE (139 + W, 90), 4
  COLOR C

W = W + 15
IF W >= 170 THEN W = 170
LINE (105 + W, 95)-(125 + W, 90)
LINE (105 + W, 85)-(125 + W, 90)
LINE (125 + W, 90)-(135 + W, 90)
CIRCLE (139 + W, 90), 4
FOR G = G TO 650: NEXT G
           COLOR 9
LINE (105 + W, 95)-(125 + W, 90)
LINE (105 + W, 85)-(125 + W, 90)
LINE (125 + W, 90)-(135 + W, 90)
CIRCLE (139 + W, 90), 4
            COLOR C
IF W - L >= 70 AND W - L <= 115 THEN GOTO 500400
GOTO 10
11000
'DUCK
   COLOR 9
   
 LINE (105 + W, 100)-(110 + W, 80)
 LINE (110 + W, 80)-(115 + W, 100)
 LINE (110 + W, 80)-(110 + W, 72)
 LINE (110 + W, 72)-(113 + W, 79)
 LINE (113 + W, 79)-(116 + W, 73)
 CIRCLE (110 + W, 68), 4

     COLOR C
LINE (105 + W, 100)-(112 + W, 90)
LINE (112 + W, 90)-(103 + W, 98)
LINE (103 + W, 98)-(103 + W, 87)
CIRCLE (103 + W, 83), 4
LINE (103 + W, 87)-(106 + W, 94)
LINE (106 + W, 94)-(109 + W, 87)
FOR Z = 1 TO 4000: NEXT Z

COLOR 9
LINE (105 + W, 100)-(112 + W, 90)
LINE (112 + W, 90)-(103 + W, 98)
LINE (103 + W, 98)-(103 + W, 87)
LINE (103 + W, 87)-(106 + W, 94)
LINE (106 + W, 94)-(109 + W, 87)

CIRCLE (103 + W, 83), 4
       COLOR C: GOTO 10
12000
'JUMP
   COLOR 9
  
  
 LINE (105 + W, 100)-(110 + W, 80)
 LINE (110 + W, 80)-(115 + W, 100)
 LINE (110 + W, 80)-(110 + W, 72)
 LINE (110 + W, 72)-(113 + W, 79)
 LINE (113 + W, 79)-(116 + W, 73)
 CIRCLE (110 + W, 68), 4
  
  
  
  
   COLOR C
     
 
 
 LINE (108 + W, 60)-(110 + W, 40)
 LINE (110 + W, 40)-(112 + W, 60)
 LINE (110 + W, 40)-(110 + W, 32)
 LINE (110 + W, 32)-(113 + W, 39)
 LINE (113 + W, 39)-(116 + W, 33)
 CIRCLE (110 + W, 28), 4
     

      FOR J = 1 TO 800: NEXT J

   COLOR 9
 
 LINE (108 + W, 60)-(110 + W, 40)
 LINE (110 + W, 40)-(112 + W, 60)
 LINE (110 + W, 40)-(110 + W, 32)
 LINE (110 + W, 32)-(113 + W, 39)
 LINE (113 + W, 39)-(116 + W, 33)
 CIRCLE (110 + W, 28), 4

          COLOR C: GOTO 10
13000
'SUPER JUMP
      IF W >= 115 THEN GOTO 10
   COLOR 9
  
 LINE (105 + W, 100)-(110 + W, 80)
 LINE (110 + W, 80)-(115 + W, 100)
 LINE (110 + W, 80)-(110 + W, 72)
 LINE (110 + W, 72)-(113 + W, 79)
 LINE (113 + W, 79)-(116 + W, 73)
 CIRCLE (110 + W, 68), 4

     COLOR C
LINE (107 + W, 50)-(127 + W, 55)
LINE (127 + W, 55)-(107 + W, 60)
LINE (127 + W, 55)-(135 + W, 55)
CIRCLE (139 + W, 55), 4
FOR V = 1 TO 500: NEXT V

         COLOR 9
LINE (107 + W, 50)-(127 + W, 55)
LINE (127 + W, 55)-(107 + W, 60)
LINE (127 + W, 55)-(135 + W, 55)
CIRCLE (139 + W, 55), 4


              COLOR C
CIRCLE (140 + W, 53), 4
LINE (140 + W, 49)-(140 + W, 41)
LINE (140 + W, 41)-(145 + W, 21)
LINE (140 + W, 41)-(135 + W, 21)
FOR X = 1 TO 500: NEXT X

     COLOR 9
CIRCLE (140 + W, 53), 4
LINE (140 + W, 49)-(140 + W, 41)
LINE (140 + W, 41)-(145 + W, 21)
LINE (140 + W, 41)-(135 + W, 21)
FOR X = 1 TO 500: NEXT X

            COLOR C

CIRCLE (150 + W, 55), 4
LINE (154 + W, 55)-(162 + W, 55)
LINE (162 + W, 55)-(182 + W, 50)
LINE (162 + W, 55)-(182 + W, 60)
FOR X = 1 TO 500: NEXT X
      COLOR 9
CIRCLE (150 + W, 55), 4
LINE (154 + W, 55)-(162 + W, 55)
LINE (162 + W, 55)-(182 + W, 50)
LINE (162 + W, 55)-(182 + W, 60)
FOR X = 1 TO 500: NEXT X

             COLOR C

W = W + 60
IF W >= 165 THEN W = 165
GOTO 10





25000
'PUNCH
   COLOR 9
 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4
 
            COLOR C2
   LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
   LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
   LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
   LINE (320 - 110 + L, 72)-(320 - 117 + L, 74)
   LINE (320 - 117 + L, 74)-(320 - 125 + L, 73)
   CIRCLE (320 - 110 + L, 68), 4
   FOR I = 1 TO 475: NEXT I
 
   COLOR 9
   LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
   LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
   LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
   LINE (320 - 110 + L, 72)-(320 - 117 + L, 74)
   LINE (320 - 117 + L, 74)-(320 - 125 + L, 73)
   CIRCLE (320 - 110 + L, 68), 4
    COLOR C
       IF W - L >= 80 AND W - L <= 90 THEN GOTO 600000
   GOTO 10

26000
'KICK
                
   COLOR 9
 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4
                
                
                
                
                  COLOR C2
   LINE (320 - 106 + L, 100)-(320 - 110 + L, 80)
   LINE (320 - 110 + L, 80)-(320 - 120 + L, 82)
   LINE (320 - 120 + L, 82)-(320 - 122 + L, 94)
   LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
   LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
   LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
   CIRCLE (320 - 110 + L, 68), 4
   FOR h = 1 TO 650: NEXT h
        COLOR 9
  
   LINE (320 - 110 + L, 80)-(320 - 120 + L, 82)
   LINE (320 - 120 + L, 82)-(320 - 122 + L, 94)
 
 
          COLOR C2
        LINE (320 - 110 + L, 80)-(320 - 135 + L, 82)
        FOR Q = 1 TO 450: NEXT Q
        COLOR 9
   LINE (320 - 106 + L, 100)-(320 - 110 + L, 80)
   LINE (320 - 110 + L, 80)-(320 - 120 + L, 82)
   LINE (320 - 120 + L, 82)-(320 - 122 + L, 94)
   LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
   LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
   LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
   CIRCLE (320 - 110 + L, 68), 4
       LINE (320 - 110 + L, 80)-(320 - 135 + L, 82)
   COLOR C
   IF W - L <= 95 AND W - L >= 75 THEN GOTO 600100
   GOTO 10

27000
'JUMPKICK

   COLOR 9
 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4

        COLOR C2
   LINE (320 - 109 + L, 80)-(320 - 110 + L, 60)
   LINE (320 - 110 + L, 60)-(320 - 133 + L, 62)
   LINE (320 - 110 + L, 60)-(320 - 110 + L, 52)
   LINE (320 - 110 + L, 52)-(320 - 113 + L, 59)
   LINE (320 - 113 + L, 59)-(320 - 116 + L, 53)
   CIRCLE (320 - 110 + L, 48), 4
   FOR A = 1 TO 750: NEXT A
          COLOR 9
   LINE (320 - 109 + L, 80)-(320 - 110 + L, 60)
   LINE (320 - 110 + L, 60)-(320 - 133 + L, 62)
   LINE (320 - 110 + L, 60)-(320 - 110 + L, 52)
   LINE (320 - 110 + L, 52)-(320 - 113 + L, 59)
   LINE (320 - 113 + L, 59)-(320 - 116 + L, 53)
   CIRCLE (320 - 110 + L, 48), 4
 
    COLOR C
    IF W - L >= 80 AND W - L < 90 THEN GOTO 600300
   GOTO 10
28000
'WALK FORWARD


   COLOR 9
 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4

           COLOR C2
 LINE (320 - 110 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4
FOR B = 1 TO 350: NEXT B:
     COLOR 9
 LINE (320 - 110 + L, 100)-(320 - 110 + L, 80):
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100):
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72):
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79):
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73):
 CIRCLE (320 - 110 + L, 68), 4:
          COLOR C

L = L - 5
IF L <= -160 THEN L = -155
GOTO 10
29000
'WALK BACKWARD


   COLOR 9
 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4

          COLOR C2
 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4
FOR G = 1 TO 350: NEXT G
          COLOR 9
 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4

      COLOR C
L = L + 5
IF L >= 70 THEN L = 65
GOTO 10

210000
'SPECIAL MOVE
   IF L <= -100 THEN GOTO 10
   COLOR 9
 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4

       COLOR C2
       L = L - 35
 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 115 + L, 73)
 LINE (320 - 115 + L, 73)-(320 - 118 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4
FOR F = 1 TO 350: NEXT F

       COLOR 9
 
 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 115 + L, 73)
 LINE (320 - 115 + L, 73)-(320 - 118 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4
 COLOR C2
   
 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 115 + L, 73)
 LINE (320 - 115 + L, 73)-(320 - 118 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4
                        FOR S = 1 TO 100: NEXT S
      COLOR 9

 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 115 + L, 73)
 LINE (320 - 115 + L, 73)-(320 - 118 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4
     COLOR C2
     

 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 115 + L, 73)
 LINE (320 - 115 + L, 73)-(320 - 118 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4
      FOR Y = 1 TO 500: NEXT Y
   COLOR 9

 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 115 + L, 73)
 LINE (320 - 115 + L, 73)-(320 - 118 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4



FOR G = G TO 650: NEXT G
L = L - 5
            COLOR
IF W - L >= 65 AND W - L < 115 THEN GOTO 600400
GOTO 10
211000
'DUCK
   COLOR 9
  
 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4

     COLOR C2
LINE (320 - 105 + L, 100)-(320 - 112 + L, 90)
LINE (320 - 112 + L, 90)-(320 - 103 + L, 98)
LINE (320 - 103 + L, 98)-(320 - 103 + L, 87)
CIRCLE (320 - 103 + L, 83), 4
LINE (320 - 103 + L, 87)-(320 - 106 + L, 94)
LINE (320 - 106 + L, 94)-(320 - 109 + L, 87)
FOR G = 1 TO 4000: NEXT G

COLOR 9
LINE (320 - 105 + L, 100)-(320 - 112 + L, 90)
LINE (320 - 112 + L, 90)-(320 - 103 + L, 98)
LINE (320 - 103 + L, 98)-(320 - 103 + L, 87)
LINE (320 - 103 + L, 87)-(320 - 106 + L, 94)
LINE (320 - 106 + L, 94)-(320 - 109 + L, 87)

CIRCLE (320 - 103 + L, 83), 4
       COLOR C: GOTO 10
212000
'JUMP
   COLOR 9
 
 
 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4
 
 
 
 
   COLOR C2
    


 LINE (320 - 108 + L, 60)-(320 - 110 + L, 40)
 LINE (320 - 110 + L, 40)-(320 - 112 + L, 60)
 LINE (320 - 110 + L, 40)-(320 - 110 + L, 32)
 LINE (320 - 110 + L, 32)-(320 - 113 + L, 39)
 LINE (320 - 113 + L, 39)-(320 - 116 + L, 33)
 CIRCLE (320 - 110 + L, 28), 4
    

      FOR J = 1 TO 800: NEXT J

   COLOR 9

 LINE (320 - 108 + L, 60)-(320 - 110 + L, 40)
 LINE (320 - 110 + L, 40)-(320 - 112 + L, 60)
 LINE (320 - 110 + L, 40)-(320 - 110 + L, 32)
 LINE (320 - 110 + L, 32)-(320 - 113 + L, 39)
 LINE (320 - 113 + L, 39)-(320 - 116 + L, 33)
 CIRCLE (320 - 110 + L, 28), 4

          COLOR C: GOTO 10
213000
'SUPER JUMP
      IF L <= -115 THEN GOTO 10
   COLOR 9
 
 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4

     COLOR C2
LINE (320 - 107 + L, 50)-(320 - 127 + L, 55)
LINE (320 - 127 + L, 55)-(320 - 107 + L, 60)
LINE (320 - 127 + L, 55)-(320 - 135 + L, 55)
CIRCLE (320 - 139 + L, 55), 4
FOR V = 1 TO 500: NEXT V

         COLOR 9
LINE (320 - 107 + L, 50)-(320 - 127 + L, 55)
LINE (320 - 127 + L, 55)-(320 - 107 + L, 60)
LINE (320 - 127 + L, 55)-(320 - 135 + L, 55)
CIRCLE (320 - 139 + L, 55), 4


              COLOR C2
CIRCLE (320 - 140 + L, 53), 4
LINE (320 - 140 + L, 49)-(320 - 140 + L, 41)
LINE (320 - 140 + L, 41)-(320 - 145 + L, 21)
LINE (320 - 140 + L, 41)-(320 - 135 + L, 21)
FOR X = 1 TO 500: NEXT X

     COLOR 9
CIRCLE (320 - 140 + L, 53), 4
LINE (320 - 140 + L, 49)-(320 - 140 + L, 41)
LINE (320 - 140 + L, 41)-(320 - 145 + L, 21)
LINE (320 - 140 + L, 41)-(320 - 135 + L, 21)
FOR X = 1 TO 500: NEXT X

            COLOR C2

CIRCLE (320 - 150 + L, 55), 4
LINE (320 - 154 + L, 55)-(320 - 162 + L, 55)
LINE (320 - 162 + L, 55)-(320 - 182 + L, 50)
LINE (320 - 162 + L, 55)-(320 - 182 + L, 60)
FOR X = 1 TO 500: NEXT X
      COLOR 9
CIRCLE (320 - 150 + L, 55), 4
LINE (320 - 154 + L, 55)-(320 - 162 + L, 55)
LINE (320 - 162 + L, 55)-(320 - 182 + L, 50)
LINE (320 - 162 + L, 55)-(320 - 182 + L, 60)
            
            COLOR C2

CIRCLE (320 - 150 + L, 55), 4
LINE (320 - 154 + L, 55)-(320 - 162 + L, 55)
LINE (320 - 162 + L, 55)-(320 - 182 + L, 50)
LINE (320 - 162 + L, 55)-(320 - 182 + L, 60)
FOR X = 1 TO 500: NEXT X
      COLOR 9
CIRCLE (320 - 150 + L, 55), 4
LINE (320 - 154 + L, 55)-(320 - 162 + L, 55)
LINE (320 - 162 + L, 55)-(320 - 182 + L, 50)
LINE (320 - 162 + L, 55)-(320 - 182 + L, 60)
FOR X = 1 TO 500: NEXT X
             COLOR C

L = L - 60
IF L <= -165 THEN L = -165
GOTO 10

500000
 COLOR 9
 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4

SOUND 100, 1
SOUND 50, 1: COLOR C2
 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
 CIRCLE (320 - 109 + L, 68), 4

               FOR k = 1 TO 500: NEXT k
LSTE = LSTE - 1
COLOR 9: LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
 CIRCLE (320 - 109 + L, 68), 4
                      
GOTO 10

500100
LSTE = LSTE - 1
SOUND 100, 1
SOUND 50, 1


GOTO 10

500300
LSTE = LSTE - 2
SOUND 100, 1
SOUND 50, 1

COLOR 4

CIRCLE (320 - 110 + L, 69), 1
PSET (320 - 110 + L, 75)
PSET (320 - 110 + L, 73)
PSET (320 - 108 + L, 73)
PSET (320 - 110 + L, 70)
PSET (320 - 105 + L, 71)
PSET (320 - 106 + L, 76)
PSET (320 - 105 + L, 75)
PSET (320 - 110 + L, 69)
PSET (320 - 108 + L, 70)
FOR G = 1 TO 1000: NEXT G
COLOR 9

CIRCLE (320 - 110 + L, 69), 1
PSET (320 - 110 + L, 75)
PSET (320 - 110 + L, 73)
PSET (320 - 108 + L, 73)
PSET (320 - 110 + L, 70)
PSET (320 - 106 + L, 76)
PSET (320 - 105 + L, 75)
             PSET (320 - 105 + L, 71)
             PSET (320 - 110 + L, 69)
             PSET (320 - 108 + L, 70)
             GOTO 10

500400
LSTE = LSTE - 4
WSTE = WSTE - 1
SOUND 100, 2
SOUND 50, 1

   COLOR 9

 LINE (320 - 105 + L, 100)-(320 - 110 + L, 80)
 LINE (320 - 110 + L, 80)-(320 - 115 + L, 100)
 LINE (320 - 110 + L, 80)-(320 - 110 + L, 72)
 LINE (320 - 110 + L, 72)-(320 - 113 + L, 79)
 LINE (320 - 113 + L, 79)-(320 - 116 + L, 73)
 CIRCLE (320 - 110 + L, 68), 4
  COLOR C2
  LINE (320 - 110 + L, 80)-(320 - 90 + L, 78)
  LINE (320 - 90 + L, 78)-(320 - 102 + L, 84)
  LINE (320 - 90 + L, 78)-(320 - 82 + L, 76)
  CIRCLE (320 - 81 + L, 72), 4
  FOR J = 1 TO 500: NEXT J
  COLOR 4
CIRCLE (320 - 110 + L, 69), 1
PSET (320 - 110 + L, 75)
PSET (320 - 110 + L, 73)
PSET (320 - 108 + L, 73)
PSET (320 - 110 + L, 70)
PSET (320 - 105 + L, 71)
PSET (320 - 106 + L, 76)
PSET (320 - 105 + L, 75)
PSET (320 - 110 + L, 69)
PSET (320 - 108 + L, 70)
FOR G = 1 TO 1000: NEXT G
COLOR 9

CIRCLE (320 - 110 + L, 69), 1
PSET (320 - 110 + L, 75)
PSET (320 - 110 + L, 73)
PSET (320 - 108 + L, 73)
PSET (320 - 110 + L, 70)
PSET (320 - 106 + L, 76)
PSET (320 - 105 + L, 75)
             PSET (320 - 105 + L, 71)
             PSET (320 - 110 + L, 69)
             PSET (320 - 108 + L, 70)


  COLOR 9
  LINE (320 - 110 + L, 80)-(320 - 90 + L, 78)
  LINE (320 - 90 + L, 78)-(320 - 102 + L, 84)
  LINE (320 - 90 + L, 78)-(320 - 82 + L, 76)
  CIRCLE (320 - 81 + L, 72), 4

         COLOR C2
  LINE (320 - 100 + L, 100)-(320 - 90 + L, 99)
  LINE (320 - 90 + L, 98)-(320 - 80 + L, 100)
  LINE (320 - 80 + L, 100)-(320 - 72 + L, 100)
  CIRCLE (320 - 72 + L, 96), 4
  COLOR 4: PSET (320 - 72 + L, 96)
  COLOR 4: PSET (320 - 72 + L, 94)
      FOR J = 1 TO 4000: NEXT J
         COLOR 9
  LINE (320 - 100 + L, 100)-(320 - 90 + L, 99)
  LINE (320 - 90 + L, 98)-(320 - 80 + L, 100)
  LINE (320 - 80 + L, 100)-(320 - 72 + L, 100)
  CIRCLE (320 - 72 + L, 96), 4
  COLOR 9: PSET (320 - 72 + L, 96)
  COLOR 9: PSET (320 - 72 + L, 94)

   COLOR 4: PSET (320 - 72 + L, 93)
   PSET (320 - 73 + L, 94)
   PSET (320 - 70 + L, 92)
   COLOR 9
   PSET (320 - 72 + L, 93)
   PSET (320 - 73 + L, 94)
   PSET (320 - 70 + L, 92)
   L = L + 12

GOTO 10
600000
   COLOR 9
 LINE (105 + W, 100)-(110 + W, 80)
 LINE (110 + W, 80)-(115 + W, 100)
 LINE (110 + W, 80)-(110 + W, 72)
 LINE (110 + W, 72)-(113 + W, 79)
 LINE (113 + W, 79)-(116 + W, 73)
 CIRCLE (110 + W, 68), 4

SOUND 100, 1
SOUND 50, 1
   COLOR C
 LINE (105 + W, 100)-(110 + W, 80)
 LINE (110 + W, 80)-(115 + W, 100)
 LINE (110 + W, 80)-(110 + W, 72)
 LINE (110 + W, 72)-(113 + W, 79)
 LINE (113 + W, 79)-(116 + W, 73)
 CIRCLE (109 + W, 68), 4
                     FOR h = 1 TO 500: NEXT h
WSTE = WSTE - 1: COLOR 9
 LINE (105 + W, 100)-(110 + W, 80)
 LINE (110 + W, 80)-(115 + W, 100)
 LINE (110 + W, 80)-(110 + W, 72)
 LINE (110 + W, 72)-(113 + W, 79)
 LINE (113 + W, 79)-(116 + W, 73)
 CIRCLE (109 + W, 68), 4

GOTO 10



600100
WSTE = WSTE - 1
SOUND 100, 1
SOUND 50, 1

GOTO 10

600300
WSTE = WSTE - 2
SOUND 100, 1
SOUND 50, 1
COLOR 4
CIRCLE (110 + W, 69), 1
PSET (110 + W, 75)
PSET (110 + W, 73)
PSET (108 + W, 73)
PSET (110 + W, 70)
PSET (105 + W, 71)
PSET (106 + W, 76)
PSET (105 + W, 75)
PSET (110 + W, 69)
PSET (108 + W, 70)
FOR G = 1 TO 1000: NEXT G
COLOR 9
CIRCLE (110 + W, 69), 1
PSET (110 + W, 75)
PSET (110 + W, 73)
PSET (108 + W, 73)
PSET (110 + W, 70)
PSET (105 + W, 71)
PSET (106 + W, 76)
PSET (105 + W, 75)
PSET (110 + W, 69)
PSET (108 + W, 70)
GOTO 10
600400
WSTE = WSTE - 4
LSTE = LSTE - 1

SOUND 100, 2
SOUND 50, 1

   COLOR 9

 LINE (105 + W, 100)-(110 + W, 80)
 LINE (110 + W, 80)-(115 + W, 100)
 LINE (110 + W, 80)-(110 + W, 72)
 LINE (110 + W, 72)-(113 + W, 79)
 LINE (113 + W, 79)-(116 + W, 73)
 CIRCLE (110 + W, 68), 4
  COLOR C
  LINE (110 + W, 80)-(90 + W, 78)
  LINE (90 + W, 78)-(102 + W, 84)
  LINE (90 + W, 78)-(82 + W, 76)
  CIRCLE (81 + W, 72), 4
  FOR J = 1 TO 500: NEXT J
  COLOR 4
CIRCLE (110 + W, 69), 1
PSET (110 + W, 75)
PSET (110 + W, 73)
PSET (108 + W, 73)
PSET (110 + W, 70)
PSET (105 + W, 71)
PSET (106 + W, 76)
PSET (105 + W, 75)
PSET (110 + W, 69)
PSET (108 + W, 70)
FOR G = 1 TO 1000: NEXT G
COLOR 9

CIRCLE (110 + W, 69), 1
PSET (110 + W, 75)
PSET (110 + W, 73)
PSET (108 + W, 73)
PSET (110 + W, 70)
PSET (106 + W, 76)
PSET (105 + W, 75)
             PSET (105 + W, 71)
             PSET (110 + W, 69)
             PSET (108 + W, 70)


  COLOR 9
  LINE (110 + W, 80)-(90 + W, 78)
  LINE (90 + W, 78)-(102 + W, 84)
  LINE (90 + W, 78)-(82 + W, 76)
  CIRCLE (81 + W, 72), 4

         COLOR C
  LINE (100 + W, 100)-(90 + W, 99)
  LINE (90 + W, 98)-(80 + W, 100)
  LINE (80 + W, 100)-(72 + W, 100)
  CIRCLE (72 + W, 96), 4
  COLOR 4: PSET (72 + W, 96)
  COLOR 4: PSET (72 + W, 94)
      FOR J = 1 TO 4000: NEXT J
         COLOR 9
  LINE (100 + W, 100)-(90 + W, 99)
  LINE (90 + W, 98)-(80 + W, 100)
  LINE (80 + W, 100)-(72 + W, 100)
  CIRCLE (72 + W, 96), 4
  COLOR 9: PSET (72 + W, 96)
  COLOR 9: PSET (72 + W, 94)

   COLOR 4: PSET (72 + W, 93)
   PSET (73 + W, 94)
   PSET (70 + W, 92)
   COLOR 9
   PSET (72 + W, 93)
   PSET (73 + W, 94)
   PSET (70 + W, 92)
   W = W - 12



GOTO 10
900000
CLS
PRINT
PRINT
PRINT
INPUT "Would like to play again Y or N"; P$
IF P$ = "N" OR P$ = "n" THEN SYSTEM
GOTO 1


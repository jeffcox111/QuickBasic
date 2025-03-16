DECLARE SUB center (row, text$)
DECLARE SUB intro ()
DECLARE SUB menu ()
DECLARE SUB drawscreen ()
DECLARE SUB instructions (nm$)
DECLARE SUB nam ()
DIM SHARED nm$
intro
nam
menu

SUB center (row, text$)
LOCATE row, 41 - LEN(text$) / 2
PRINT text$;
END SUB

SUB drawscreen
SCREEN 12
DRAW "c 2 bd200 u300 r200 d300 bl500 u175 e75 f75 l150 r150 d175 bu150 bl40 d20 r20 u20 l20 bl75 d20 r20 u20 l20 bd50 d20 r20 u20 l20 br75 d20 r20 u20 l20 bd100 l30 u40 r30 d40 l60 u40 r30 d40 br220 br70 bu200 l40 u30 r40 d30 br40 u30 r40 d30 l40 bd60 r40 d30 l40 u30 bl40 l40 d30 r40 u30 bd140 u50 r50 d50 l25 u50 l25 d50 r25"
LOCATE 1, 1
PRINT "SCORE:       "
LOCATE 1, 30
COLOR 1
PRINT "TYRANT SOFTWARE"
COLOR 8
LOCATE 1, 70
PRINT "X  Tyrant"
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
PRINT "your score will go up 5 points"
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
LOCATE 20, 60: PRINT "a game by:"
LOCATE 22, 63: PRINT "Michael Hughes,"
LOCATE 23, 64: PRINT "Travis Larson,"
LOCATE 24, 68: PRINT "and"
LOCATE 25, 65: PRINT "Jeff Cox"
WHILE INKEY$ = "": SLEEP: WEND
CLS
END SUB

SUB menu
CLS
center 10, "1. Playgame"
center 11, "2. instructions"
center 12, "3. change name"
center 13, "4. end"
center 15, "your selection: ": LINE INPUT ; sel$
IF sel$ = "1" THEN
  CLS
  drawscreen
ELSEIF sel$ = "2" THEN
  instructions (nm$)
ELSEIF sel$ = "3" THEN
  nam
  menu
ELSEIF sel$ = "4" THEN
  END
ELSE
  menu
END IF
END SUB

SUB nam
CLS
INPUT "what is your name"; nm$
END SUB


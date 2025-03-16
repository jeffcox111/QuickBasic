DECLARE SUB fprint (text$, x!, y!, fcolor!, sx!, sy!, d!)
DECLARE SUB loadpal (pal$)
DECLARE SUB loadgfx (gfx$)
DECLARE SUB main ()
DECLARE SUB intro ()
DECLARE SUB center (row, text$)
DECLARE SUB leave ()
DECLARE SUB story ()
DECLARE SUB briefing ()
DECLARE SUB missions ()
DECLARE SUB cms ()
DECLARE SUB invalid ()
DECLARE SUB loose ()
DECLARE SUB dialing (num$)
DECLARE SUB doors ()
DECLARE SUB logoff ()
DECLARE SUB win ()
DECLARE SUB email ()
DECLARE SUB preferences ()

DIM SHARED pass$
DIM SHARED num$
intro
DO
main
LOOP

SUB briefing
CLS
SCREEN 12
OPEN "missions.dat" FOR INPUT AS #1
INPUT #1, m
CLOSE #1
SELECT CASE m
  CASE 1
    COLOR 11
    PRINT "  This, Conrad, is your first mission.  A Hacker is entering a BBS"
    PRINT "know as Stoned Henge.  He is accessing other people's accounts and"
    PRINT "telneting to other boards to do the same thing undetectedly.  Our"
    PRINT "CyberSpys tell us that his handle is Nector and his password is "
    PRINT "666-666.  Your mission is to sign on to the board in his name and"
    PRINT "simply change the password.  He can sign on in another name and start"
    PRINT "over but we think this will scare him away from that idea.  Good "
    PRINT "luck."
    WHILE INKEY$ = "": SLEEP: WEND
END SELECT

  END SUB

SUB center (row, text$)
LOCATE row, 41 - LEN(text$) / 2
PRINT text$;
END SUB

SUB cms
LINE (59, 48)-(257, 161), 0, BF
END SUB

SUB dialing (num$)
cms
q$ = "ATDT" + num$
fprint q$, 65, 60, 15, 3 / 5, 3 / 5, 0
SLEEP 2
PLAY "l12<cdc<eb>cc>"
SLEEP 1
SOUND 1090, 18.2 * 1
SOUND 990, 18
SOUND 1200, 18
FOR x = 1 TO 15
SOUND 200, 1
FOR delay = 1 TO 10000: NEXT delay
NEXT x
fprint "ARQ", 65, 80, 15, 3 / 5, 3 / 5, 2500
fprint "CONNECT 14400", 65, 100, 15, 3 / 5, 3 / 5, 2500
WHILE INKEY$ = "": SLEEP: WEND
END SUB

SUB doors
7 cms
fprint "Door games", 120, 60, 15, 3 / 5, 3 / 5, 2500
fprint "1. Trivia", 65, 80, 15, 3 / 5, 3 / 5, 2500
fprint "2. Alienwar", 65, 90, 15, 3 / 5, 3 / 5, 2500
fprint "3. Space Reign", 65, 100, 15, 3 / 5, 3 / 5, 2500
fprint "4. Exit Menu", 65, 110, 15, 3 / 5, 3 / 5, 2500
LOCATE 16, 9: INPUT "Where to "; where$
IF where$ <> "4" THEN
CLS
SCREEN 12
COLOR 11
PRINT "   This is your boss speaking...  GET BACK TO WORK AND STOP WAISTING"
PRINT "YOUR PRECIOUS TIME PLAYING GAMES!!!"
WHILE INKEY$ = "": SLEEP: WEND
CLS
SCREEN 13
loadpal "monitor.pal"
loadgfx "monitor.gfx"
GOTO 7
ELSE
EXIT SUB
END IF
END SUB

SUB email
90 cms
fprint "E mail", 140, 60, 15, 3 / 5, 3 / 5, 2500
fprint "1. Send Message", 65, 90, 15, 3 / 5, 3 / 5, 2500
fprint "2. Read Old Messages", 65, 100, 15, 3 / 5, 3 / 5, 2500
fprint "3. Exit Menu", 65, 110, 15, 3 / 5, 3 / 5, 2500
LOCATE 16, 9: INPUT "Where to "; where$
SELECT CASE where$
  CASE "1"
    CLS
    SCREEN 12
    COLOR 11
    PRINT "   This is your boss speaking...  GET BACK TO WORK AND STOP WAISTING"
    PRINT "YOUR PRECIOUS TIME WRITING LETTERS!!!"
    WHILE INKEY$ = "": SLEEP: WEND
    CLS
    SCREEN 13
    loadpal "monitor.pal"
    loadgfx "monitor.gfx"
    GOTO 90
  CASE "2"
    cms
    fprint "Message from Tazor...", 65, 60, 15, 3 / 5, 3 / 5, 2500
    fprint "  All the files are in place", 65, 80, 15, 3 / 5, 3 / 5, 2500
    fprint "and the virus is armed.  Good", 65, 90, 15, 3 / 5, 3 / 5, 2500
    fprint "Luck Nector.", 65, 100, 15, 3 / 5, 3 / 5, 2500
    fprint "Tazor", 100, 120, 15, 3 / 5, 3 / 5, 2500
    WHILE INKEY$ = "": SLEEP: WEND
    GOTO 90
  CASE "3"
    EXIT SUB
  END SELECT
END SUB

SUB fprint (text$, x!, y!, fcolor!, sx!, sy!, d!)
a = LEN(text$)
FOR i = 1 TO a
FOR delay = 1 TO d!: NEXT delay
SELECT CASE LCASE$(MID$(text$, i, 1))
 CASE "a"
 LINE (x, y)-(x, y - 5 * sy), fcolor
 LINE -(x + 4 * sx, y - 8 * sy), fcolor
 LINE -(x + 5 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 5 * sy), fcolor
 LINE -(x + 7 * sx, y), fcolor
 LINE (x, y - 4 * sy)-(x + 7 * sx, y - 4 * sy), fcolor
 x = x + 10 * sx
 CASE "b"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 LINE -(x + 8 * sx, y - 8 * sy), fcolor
 LINE -(x + 8 * sx, y - 5 * sy), fcolor
 LINE -(x + 7 * sx, y - 4 * sy), fcolor
 LINE -(x, y - 4 * sy), fcolor
 LINE (x + 8 * sx, y - 3 * sy)-(x + 8 * sx, y - 1 * sy), fcolor
 LINE -(x + 7 * sx, y), fcolor
 LINE -(x, y), fcolor
 LINE (x + 7 * sx, y - 4 * sy)-(x + 8 * sx, y - 3 * sy), fcolor
 x = x + 10 * sx
 CASE "c"
 LINE (x, y - 1 * sy)-(x, y - 7 * sy), fcolor
 LINE -(x + 1 * sx, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 7 * sy), fcolor
 LINE (x, y - 1 * sy)-(x + 1 * sx, y), fcolor
 LINE -(x + 6 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 1 * sy), fcolor
 x = x + 10 * sx
 CASE "d"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 7 * sy), fcolor
 LINE -(x + 7 * sx, y - 1 * sy), fcolor
 LINE -(x + 6 * sx, y), fcolor
 LINE -(x, y), fcolor
 x = x + 10 * sx
 CASE "e"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 LINE (x, y)-(x + 7 * sx, y), fcolor
 LINE (x, y - 4 * sy)-(x + 4 * sx, y - 4 * sy), fcolor
 x = x + 10 * sx
 CASE "f"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 LINE (x, y - 4 * sy)-(x + 4 * sx, y - 4 * sy), fcolor
 x = x + 10 * sx
 CASE "g"
 LINE (x + 5 * sx, y - 3 * sy)-(x + 6 * sx, y - 3 * sy), fcolor
 LINE -(x + 7 * sx, y - 2 * sy), fcolor
 LINE -(x + 7 * sx, y - 1 * sy), fcolor
 LINE -(x + 6 * sx, y), fcolor
 LINE -(x + 1 * sx, y), fcolor
 LINE -(x, y - 1 * sy), fcolor
 LINE -(x, y - 7 * sy), fcolor
 LINE -(x + 1 * sx, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 7 * sy), fcolor
 x = x + 10 * sx
 CASE "h"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE (x + 7 * sx, y)-(x + 7 * sx, y - 8 * sy), fcolor
 LINE (x, y - 4 * sy)-(x + 7 * sx, y - 4 * sy), fcolor
 x = x + 10 * sx
 CASE "i"
 LINE (x, y)-(x + 6 * sx, y), fcolor
 LINE (x, y - 8 * sy)-(x + 6 * sx, y - 8 * sy), fcolor
 LINE (x + 3 * sx, y)-(x + 3 * sx, y - 8 * sy), fcolor
 x = x + 9 * sx
 CASE "j"
 LINE (x, y - 2 * sy)-(x, y - 1 * sy), fcolor
 LINE -(x + 1 * sx, y), fcolor
 LINE -(x + 6 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 1 * sy), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 x = x + 10 * sx
 CASE "k"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE (x, y - 4 * sy)-(x + 7 * sx, y - 8 * sy), fcolor
 LINE (x, y - 4 * sy)-(x + 7 * sx, y), fcolor
 x = x + 10 * sx
 CASE "l"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE (x, y)-(x + 6 * sx, y), fcolor
 x = x + 9 * sx
 CASE "m"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE -(x + 3 * sx, y - 5 * sy), fcolor
 LINE -(x + 4 * sx, y - 5 * sy), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y), fcolor
 x = x + 10 * sx
 CASE "n"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 x = x + 10 * sx
 CASE "o"
 LINE (x, y - 2 * sy)-(x, y - 6 * sy), fcolor
 LINE -(x + 1 * sx, y - 7 * sy), fcolor
 LINE -(x + 2 * sx, y - 8 * sy), fcolor
 LINE -(x + 5 * sx, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 7 * sy), fcolor
 LINE -(x + 7 * sx, y - 6 * sy), fcolor
 LINE -(x + 7 * sx, y - 2 * sy), fcolor
 LINE -(x + 6 * sx, y - 1 * sy), fcolor
 LINE -(x + 5 * sx, y), fcolor
 LINE -(x + 2 * sx, y), fcolor
 LINE -(x + 1 * sx, y - 1 * sy), fcolor
 LINE -(x, y - 2 * sy), fcolor
 x = x + 10 * sx
 CASE "p"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 7 * sy), fcolor
 LINE -(x + 7 * sx, y - 5 * sy), fcolor
 LINE -(x + 6 * sx, y - 4 * sy), fcolor
 LINE -(x, y - 4 * sy), fcolor
 x = x + 10 * sx
 CASE "q"
 LINE (x, y - 3 * sy)-(x, y - 6 * sy), fcolor
 LINE -(x + 2 * sx, y - 8 * sy), fcolor
 LINE -(x + 5 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 6 * sy), fcolor
 LINE -(x + 7 * sx, y - 3 * sy), fcolor
 LINE -(x + 5 * sx, y - 1 * sy), fcolor
 LINE -(x + 2 * sx, y - 1 * sy), fcolor
 LINE -(x, y - 3 * sy), fcolor
 LINE (x + 3 * sx, y - 3 * sy)-(x + 5 * sx, y), fcolor
 x = x + 10 * sx
 CASE "r"
 LINE (x, y)-(x, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 7 * sy), fcolor
 LINE -(x + 7 * sx, y - 5 * sy), fcolor
 LINE -(x + 6 * sx, y - 4 * sy), fcolor
 LINE -(x, y - 4 * sy), fcolor
 LINE (x + 2 * sx, y - 4 * sy)-(x + 7 * sx, y), fcolor
 x = x + 10 * sx
 CASE "s"
 LINE (x, y - 2 * sy)-(x + 2 * sx, y), fcolor
 LINE -(x + 5 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 2 * sy), fcolor
 LINE -(x + 5 * sx, y - 4 * sy), fcolor
 LINE -(x + 2 * sx, y - 4 * sy), fcolor
 LINE -(x, y - 6 * sy), fcolor
 LINE -(x + 2 * sx, y - 8 * sy), fcolor
 LINE -(x + 5 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 6 * sy), fcolor
 x = x + 10 * sx
 CASE "t"
 LINE (x, y - 8 * sy)-(x + 6 * sx, y - 8 * sy), fcolor
 LINE (x + 3 * sx, y - 8 * sy)-(x + 3 * sx, y), fcolor
 x = x + 9 * sx
 CASE "u"
 LINE (x, y - 8 * sy)-(x, y - 1 * sy), fcolor
 LINE -(x + 1 * sx, y), fcolor
 LINE -(x + 6 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 1 * sy), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 x = x + 10 * sx
 CASE "v"
 LINE (x, y - 8 * sy)-(x + 3 * sx, y), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 x = x + 9 * sx
 CASE "w"
 LINE (x, y - 8 * sy)-(x, y), fcolor
 LINE -(x + 3 * sx, y - 3 * sy), fcolor
 LINE -(x + 4 * sx, y - 3 * sy), fcolor
 LINE -(x + 7 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 x = x + 10 * sx
 CASE "x"
 LINE (x, y - 8 * sy)-(x + 7 * sx, y), fcolor
 LINE (x, y)-(x + 7 * sx, y - 8 * sy), fcolor
 x = x + 10 * sx
 CASE "y"
 LINE (x, y - 8 * sy)-(x + 3 * sx, y - 5 * sy), fcolor
 LINE -(x + 3 * sx, y), fcolor
 LINE (x + 3 * sx, y - 5 * sy)-(x + 6 * sx, y - 8 * sy), fcolor
 x = x + 9 * sx
 CASE "z"
 LINE (x, y - 8 * sy)-(x + 7 * sx, y - 8 * sy), fcolor
 LINE -(x, y), fcolor
 LINE -(x + 7 * sx, y), fcolor
 x = x + 10 * sx
 CASE "1"
 LINE (x, y - 6 * sy)-(x + 2 * sx, y - 8 * sy), fcolor
 LINE -(x + 3 * sx, y - 8 * sy), fcolor
 LINE -(x + 3 * sx, y), fcolor
 LINE (x, y)-(x + 6 * sx, y), fcolor
 x = x + 9 * sx
 CASE "2"
 LINE (x + 7 * sx, y)-(x, y), fcolor
 LINE -(x + 7 * sx, y - 6 * sy), fcolor
 LINE -(x + 5 * sx, y - 8 * sy), fcolor
 LINE -(x + 2 * sx, y - 8 * sy), fcolor
 LINE -(x, y - 6 * sy), fcolor
 x = x + 10 * sx
 CASE "3"
 LINE (x, y - 1 * sy)-(x + 1 * sx, y), fcolor
 LINE -(x + 6 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 1 * sy), fcolor
 LINE -(x + 7 * sx, y - 7 * sy), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 1 * sx, y - 8 * sy), fcolor
 LINE -(x, y - 7 * sy), fcolor
 LINE (x + 7 * sx, y - 4 * sy)-(x + 3 * sx, y - 4 * sy), fcolor
 x = x + 10 * sx
 CASE "4"
 LINE (x, y - 8 * sy)-(x, y - 4 * sy), fcolor
 LINE -(x + 7 * sx, y - 4 * sy), fcolor
 LINE (x + 6 * sx, y - 8 * sy)-(x + 6 * sx, y), fcolor
 x = x + 10 * sx
 CASE "5"
 LINE (x, y)-(x + 5 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 2 * sy), fcolor
 LINE -(x + 7 * sx, y - 3 * sy), fcolor
 LINE -(x + 6 * sx, y - 4 * sy), fcolor
 LINE -(x, y - 4 * sy), fcolor
 LINE -(x, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 8 * sy), fcolor
 x = x + 10 * sx
 CASE "6"
 LINE (x + 7 * sx, y - 7 * sy)-(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 1 * sx, y - 8 * sy), fcolor
 LINE -(x, y - 7 * sy), fcolor
 LINE -(x, y - 1 * sy), fcolor
 LINE -(x + 1 * sy, y), fcolor
 LINE -(x + 6 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 1 * sy), fcolor
 LINE -(x + 7 * sx, y - 3 * sy), fcolor
 LINE -(x + 6 * sx, y - 4 * sy), fcolor
 LINE -(x, y - 4 * sy), fcolor
 x = x + 10 * sx
 CASE "7"
 LINE (x, y - 8 * sy)-(x + 7 * sx, y - 8 * sy), fcolor
 LINE -(x, y), fcolor
 x = x + 10 * sx
 CASE "8"
 LINE (x, y - 5 * sy)-(x, y - 7 * sy), fcolor
 LINE -(x + 1 * sx, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 7 * sy), fcolor
 LINE -(x + 7 * sx, y - 5 * sy), fcolor
 LINE -(x + 6 * sx, y - 4 * sy), fcolor
 LINE -(x + 1 * sx, y - 4 * sy), fcolor
 LINE -(x, y - 3 * sy), fcolor
 LINE -(x, y - 1 * sy), fcolor
 LINE -(x + 1 * sx, y), fcolor
 LINE -(x + 6 * sx, y), fcolor
 LINE -(x + 7 * sx, y - 1 * sy), fcolor
 LINE -(x + 7 * sx, y - 3 * sy), fcolor
 LINE -(x + 6 * sx, y - 4 * sy), fcolor
 x = x + 10 * sx
 CASE "9"
 LINE (x, y - 5 * sy)-(x, y - 7 * sy), fcolor
 LINE -(x + 1 * sx, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 8 * sy), fcolor
 LINE -(x + 7 * sx, y - 7 * sy), fcolor
 LINE -(x + 7 * sx, y), fcolor
 LINE (x + 7 * sx, y - 4 * sy)-(x + 1 * sx, y - 4 * sy), fcolor
 LINE -(x, y - 5 * sy), fcolor
 x = x + 10 * sx
 CASE "0"
 LINE (x, y - 2 * sy)-(x, y - 6 * sy), fcolor
 LINE -(x + 1 * sx, y - 7 * sy), fcolor
 LINE -(x + 2 * sx, y - 8 * sy), fcolor
 LINE -(x + 5 * sx, y - 8 * sy), fcolor
 LINE -(x + 6 * sx, y - 7 * sy), fcolor
 LINE -(x + 7 * sx, y - 6 * sy), fcolor
 LINE -(x + 7 * sx, y - 2 * sy), fcolor
 LINE -(x + 6 * sx, y - 1 * sy), fcolor
 LINE -(x + 5 * sx, y), fcolor
 LINE -(x + 2 * sx, y), fcolor
 LINE -(x + 1 * sx, y - 1 * sy), fcolor
 LINE -(x, y - 2 * sy), fcolor
 LINE (x + 1 * sx, y - 1 * sy)-(x + 6 * sx, y - 7 * sy), fcolor
 x = x + 10 * sx
 CASE "."
 LINE (x, y)-(x, y - 1 * sy), fcolor
 LINE -(x + 1 * sx, y - 1 * sy), fcolor
 LINE -(x + 1 * sx, y), fcolor
 LINE -(x, y), fcolor
 'PAINT (x + 1, y + 1), fcolor
 x = x + 6 * sx
 CASE " "
 x = x + 10 * sx
 CASE ELSE
 LOCATE 5, 1: COLOR 3: PRINT "Sorry not done yet"
 END SELECT
NEXT i
END SUB

SUB intro
SCREEN 13
loadpal "tyrant1.pal"
loadgfx "tyrant1.gfx"
WHILE INKEY$ = "": SLEEP: WEND
END SUB

SUB invalid
cms
fprint "Invalid Name and Password", 65, 60, 15, 3 / 5, 3 / 5, 2500
fprint "Get off this board you Hacker", 65, 80, 15, 3 / 5, 3 / 5, 2500
fprint "NO CARRIER", 65, 120, 15, 3 / 5, 3 / 5, 2500
WHILE INKEY$ = "": SLEEP: WEND
loose
END SUB

SUB leave
CLS
SCREEN 12
COLOR 13
center 15, "Thanks for using Tyrant Software!!!"
WHILE INKEY$ = "": SLEEP: WEND
END
END SUB

SUB loadgfx (pic$)
DEF SEG = &HA000
BLOAD pic$, 0
DEF SEG

END SUB

SUB loadpal (pal$)
OPEN pal$ FOR INPUT AS #1
FOR x = 0 TO 255
INPUT #1, r, g, b
OUT &H3C8, x
OUT &H3C9, r
OUT &H3C9, g
OUT &H3C9, b
NEXT x
CLOSE #1
END SUB

SUB logoff
cms
fprint "Good Bye", 110, 60, 15, 3 / 5, 3 / 5, 2500
fprint "Thanks for logging on.", 65, 80, 15, 3 / 5, 3 / 5, 2500
fprint "Come back soon.", 65, 90, 15, 3 / 5, 3 / 5, 2500
fprint "NO CARRIER", 65, 120, 15, 3 / 5, 3 / 5, 2500
WHILE INKEY$ = "": SLEEP: WEND
IF pass$ <> "666-666" THEN
  win
ELSE
  loose
END IF
END SUB

SUB loose
CLS
SCREEN 12
COLOR 11
PRINT "  Sorry, Mr. Riley.  You have failed to stop the hacker involved with"
PRINT "this case.  Good luck next time."
WHILE INKEY$ = "": SLEEP: WEND
END SUB

SUB main
CLS
OPEN "missions.dat" FOR OUTPUT AS #1
m = 1
WRITE #1, m
CLOSE #1
SCREEN 13
loadpal "main.pal"
loadgfx "main.gfx"
b$ = "": WHILE VAL(b$) < 1 OR VAL(b$) > 2
b$ = INKEY$
SELECT CASE b$
  CASE "1"
    briefing
    missions
    EXIT SUB
  CASE "2"
    story
    EXIT SUB
  CASE "3"
    leave
END SELECT
WEND
END SUB

SUB missions
CLS
SCREEN 13
OPEN "missions.dat" FOR INPUT AS #1
INPUT #1, m
CLOSE #1
loadpal "monitor.pal"
loadgfx "monitor.gfx"
SELECT CASE m
  CASE 1
    TIMER ON
    st = TIMER
    WHILE TimePast < 6
    TimePast = TIMER - st
    dialing "5557679"
    cms
    LOCATE 13, 15: PRINT "Welcome to"
    LOCATE 14, 12: PRINT "The Stoned Henge"
    LOCATE 16, 9: INPUT "Name: ", handle$
    LOCATE 17, 9: INPUT "Password: ", pass$
    IF handle$ <> "Nector" OR pass$ <> "666-666" THEN invalid: EXIT SUB
    cms
    fprint "Welcome Nector", 65, 60, 15, 3 / 5, 3 / 5, 2500
    fprint "Sorry. No new mail", 65, 100, 15, 3 / 5, 3 / 5, 2500
    fprint "for you.", 65, 110, 15, 3 / 5, 3 / 5, 2500
    WHILE INKEY$ = "": SLEEP: WEND
8 cms
    fprint "Stoned Henge", 110, 60, 15, 3 / 5, 3 / 5, 2500
    fprint "1. E mail", 65, 80, 15, 3 / 5, 3 / 5, 2500
    fprint "2. Door Games", 65, 90, 15, 3 / 5, 3 / 5, 2500
    fprint "3. Preferences", 65, 100, 15, 3 / 5, 3 / 5, 2500
    fprint "4. Log off", 65, 110, 15, 3 / 5, 3 / 5, 2500
    LOCATE 16, 9: INPUT "Where to "; w$
    SELECT CASE w$
      CASE "1"
        email
        GOTO 8
      CASE "2"
        doors
        GOTO 8
      CASE "3"
        preferences
        GOTO 8
      CASE "4"
        logoff
        EXIT SUB
      CASE ELSE
        GOTO 8
    END SELECT
    WEND
END SELECT
END SUB

SUB preferences
70 cms
fprint "Preferences", 120, 60, 15, 3 / 5, 3 / 5, 2500
fprint "1. ANSI or ASCII", 65, 80, 15, 3 / 5, 3 / 5, 2500
fprint "2. Password", 65, 90, 15, 3 / 5, 3 / 5, 2500
fprint "3. Access level", 65, 100, 15, 3 / 5, 3 / 5, 2500
fprint "4. Exit Menu", 65, 110, 15, 3 / 5, 3 / 5, 2500
LOCATE 16, 9: INPUT "Where to "; where$
SELECT CASE where$
  CASE "1"
    cms
    fprint "Currently set on ASCII.", 65, 80, 15, 3 / 5, 3 / 5, 2500
    WHILE INKEY$ = "": SLEEP: WEND
    GOTO 70
  CASE "2"
    cms
    LOCATE 12, 9: PRINT "Do you wish to change"
    LOCATE 13, 9: INPUT "your password (y/n)"; yn$
    IF yn$ <> "y" THEN GOTO 70
    LOCATE 14, 9: INPUT "Old Password: ", pass$
      IF pass$ <> "666-666" THEN fprint "Invalid Password", 65, 130, 15, 3 / 5, 3 / 5, 2500: WHILE INKEY$ = "": SLEEP: WEND: GOTO 70
    LOCATE 15, 9: INPUT "New Password: ", pass2$
    SWAP pass2$, pass$
    GOTO 70
  CASE "3"
    cms
    fprint "Currently set on level 5.", 65, 80, 15, 3 / 5, 3 / 5, 2500
    WHILE INKEY$ = "": SLEEP: WEND
    GOTO 70
  CASE "4"
    EXIT SUB
END SELECT
END SUB

SUB story
CLS
SCREEN 12
COLOR 11
PRINT "  You are Agent Conrad Riley.  You work in the B.A.T.C.H. division of"
PRINT "the FBI.  B.A.T.C.H. is the Bureau Against Terrorist Criminal Hacking."
PRINT "Your job is to prevent Hackers of all sorts and skill levels from "
PRINT "committing crimes against computer systems and their users.  You will "
PRINT "need to use all your knowlegde of computing and hacking to stop these"
PRINT "offenders.  Good luck."
WHILE INKEY$ = "": SLEEP: WEND
EXIT SUB
END SUB

SUB win
CLS
SCREEN 12
COLOR 11
PRINT "  Congratulations!!!  You have successfully prevented the hacker"
PRINT "from creating more trouble.  Keep up the good work."
WHILE INKEY$ = "": SLEEP: WEND
END SUB


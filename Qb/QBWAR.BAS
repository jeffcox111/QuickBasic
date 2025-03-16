DECLARE SUB menu ()
DECLARE SUB warmenu ()
DECLARE SUB intro ()
DECLARE SUB main ()
DECLARE SUB center (row!, text$)
DECLARE SUB inst ()
DECLARE SUB loose ()
DECLARE SUB win ()
DECLARE SUB leave ()
DIM SHARED wins
DIM SHARED looses
DIM SHARED choice$
DIM SHARED score
DIM SHARED spies
DIM SHARED looks
RANDOMIZE TIMER
score = 20
looses = 0
wins = 0
spies = 0
looks = 8
intro

SUB center (row, text$)
LOCATE row, 41 - LEN(text$) / 2
PRINT text$;
END SUB

SUB inst
CLS
SCREEN 9
PAINT (1, 1), 7
COLOR 1, 7
PRINT " In this game, the object is to take over the world. To do that, you"
PRINT "must defeat the five world powers-- England, Japan, China, Germany,"
PRINT "and Russia. This game is based on luck, so there is no skill level."
PRINT "If you win a war, then your score is raised 20 points. To master the"
PRINT "game, you must earn 100 points. If you have -20 points you loose."
PRINT "                                                  Have fun!!! "
WHILE INKEY$ = "": SLEEP: WEND
main
END SUB

SUB intro
SCREEN 12
CLS
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
LOCATE 20, 56: PRINT "a game by..."
LOCATE 22, 58: PRINT "Jeff Cox &"
LOCATE 23, 56: PRINT "Travis Larson "
WHILE INKEY$ = "": SLEEP: WEND
main
END SUB

SUB leave
SCREEN 12
CLS
COLOR 3
center 8, "Thank you for using Tyrant Software!"
DRAW "br20 c3 b l60 b u30 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c3 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c3 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
DRAW "c3 b u1 b l1 r15 f21 e21 r15 g30 f30 l15 h21 g21 l15 e30 h30"
WHILE INKEY$ = "": SLEEP: WEND
END
END SUB

SUB loose
CLS
SCREEN 9
PAINT (1, 1), 7
COLOR 1, 7
PRINT "  The United States of America has lost its fight for world domination"
PRINT "The surviving Americans have to live with the shame of losing the most"
PRINT "important war in the millinium.  Maybe if the distant future the people"
PRINT "will be able to re-establish what was once the land of the free."
WHILE INKEY$ = "": SLEEP: WEND
score = 20
losses = 0
wins = 0
looks = 8
spies = 0
main
END SUB

SUB main
CLS
SCREEN 9
PAINT (1, 1), 7
COLOR 1, 7
center 3, "DECLARATION OF WAR!!!"
LOCATE 5, 1: PRINT "/////------------\\\\\"
LOCATE 6, 1: PRINT "1. Go to war!!!"
LOCATE 7, 1: PRINT "2. Instructions"
LOCATE 8, 1: PRINT "3. Exit"
LOCATE 9, 1: PRINT "\\\\\------------/////"
LOCATE 12, 1: INPUT "Your selection"; pick$
IF pick$ = "1" THEN
  score = 20
  looses = 0
  wins = 0
  menu
ELSEIF pick$ = "2" THEN
  inst
ELSEIF pick$ = "3" THEN
  leave
ELSE
  LOCATE 13, 1: COLOR 4: PRINT "Invalid selection!!!"
  WHILE INKEY$ = "": SLEEP: WEND
  main
END IF
END SUB

SUB menu
SCREEN 9
CLS
PAINT (1, 1), 7
COLOR 1, 7
IF score <= -20 THEN
  loose
ELSEIF score >= 100 THEN
  win
END IF
LOCATE 5, 1: PRINT "/////------------\\\\\"
LOCATE 6, 1: PRINT "1. China"
LOCATE 7, 1: PRINT "2. England"
LOCATE 8, 1: PRINT "3. Germany"
LOCATE 9, 1: PRINT "4. Japan"
LOCATE 10, 1: PRINT "5. Russia"
LOCATE 11, 1: PRINT "\\\\\------------/////"
LOCATE 7, 40: PRINT "score: "; score
LOCATE 8, 40: PRINT "wins: "; wins
LOCATE 9, 40: PRINT "looses: "; looses
LOCATE 10, 40: PRINT "spies found: "; spies
LOCATE 23, 1: COLOR 2: PRINT "*** CAPS LOCK MUST BE ON ***"
LOCATE 22, 1: COLOR 2: PRINT "*** TYPE "; CHR$(34); "EXIT"; CHR$(34); " TO EXIT ***"
LOCATE 13, 1: COLOR 1, 7: INPUT "Who do you wish to declare war on"; choice$
IF choice$ = "CHINA" THEN
  LOCATE 15, 1: COLOR 4: PRINT "The U.S. has declared war on China."
  WHILE INKEY$ = "": SLEEP: WEND
  warmenu
ELSEIF choice$ = "ENGLAND" THEN
  LOCATE 15, 1: COLOR 4: PRINT "The U.S. has declared war on England."
  WHILE INKEY$ = "": SLEEP: WEND
  warmenu
ELSEIF choice$ = "GERMANY" THEN
  LOCATE 15, 1: COLOR 4: PRINT "The U.S. has declared war on Germany."
  WHILE INKEY$ = "": SLEEP: WEND
  warmenu
ELSEIF choice$ = "JAPAN" THEN
  LOCATE 15, 1: COLOR 4: PRINT "The U.S. has declared war on Japan."
  WHILE INKEY$ = "": SLEEP: WEND
  warmenu
ELSEIF choice$ = "RUSSIA" THEN
  LOCATE 15, 1: COLOR 4: PRINT "The U.S. has declared war on Russia."
  WHILE INKEY$ = "": SLEEP: WEND
  warmenu
ELSEIF choice$ = "UUDDLRLRBAS" THEN
  score = score + 100
  LOCATE 15, 1: COLOR 3: PRINT "You have discovered the MEGA-CODE!!!"
  WHILE INKEY$ = "": SLEEP: WEND
  menu
ELSEIF choice$ = "EXIT" THEN
  score = 0
  main
ELSE
  LOCATE 15, 1: COLOR 4: PRINT "That country isn't worth fighting!!!"
  WHILE INKEY$ = "": SLEEP: WEND: menu
END IF
END SUB

SUB warmenu
SCREEN 9
CLS
PAINT (1, 1), 7
COLOR 4
LOCATE 3, 1: PRINT choice$; " has gone to war with you."
LOCATE 5, 1: COLOR 1, 7: PRINT "/////------------\\\\\"
LOCATE 6, 1: PRINT "1. Battle with "; choice$
LOCATE 7, 1: PRINT "2. Call truce with "; choice$
LOCATE 8, 1: PRINT "3. Spy on "; choice$
LOCATE 9, 1: PRINT "4. Search for spies ("; looks; ")"
LOCATE 10, 1: PRINT "\\\\\------------/////"
LOCATE 7, 40: PRINT "score: "; score
LOCATE 8, 40: PRINT "wins: "; wins
LOCATE 9, 40: PRINT "looses: "; looses
LOCATE 10, 40: PRINT "spies found: "; spies
LOCATE 11, 1: INPUT "What do you wish to do (1-4)"; sel$
IF sel$ = "1" THEN
  battle% = INT(RND * 5)
  IF battle% = 0 OR battle% = 1 THEN
  LOCATE 12, 1: PRINT "You lost the war!!!"
  score = score - 20
  looses = losses + 1
  WHILE INKEY$ = "": SLEEP: WEND
  menu
  ELSEIF battle% = 2 OR battle% = 3 THEN
  LOCATE 12, 1: PRINT "You won the war!!!"
  score = score + 20
  wins = wins + 1
  WHILE INKEY$ = "": SLEEP: WEND
  menu
  ELSEIF battle% = 4 THEN
  LOCATE 12, 1: PRINT choice$; " has called a truce."
  WHILE INKEY$ = "": SLEEP: WEND
  menu
  END IF
ELSEIF sel$ = "2" THEN
  LOCATE 12, 1: PRINT "You have called a truce."
  WHILE INKEY$ = "": SLEEP: WEND
  menu
ELSEIF sel$ = "3" THEN
  spy% = INT(RND * 2)
  IF spy% = 0 THEN
    score = score + 10
    wins = wins + 1
    LOCATE 12, 1: PRINT "You have successfully managed to spy on "; choice$
    WHILE INKEY$ = "": SLEEP: WEND
    menu
  ELSEIF spy% = 1 THEN
    score = score - 10
    looses = looses + 1
    LOCATE 12, 1: PRINT "You have been cought trying to spy on "; choice$
    WHILE INKEY$ = "": SLEEP: WEND
    menu
  END IF
ELSEIF sel$ = "4" AND looks <> 0 THEN
  search% = INT(RND * 2)
  looks = looks - 1
  IF search% = 0 THEN
    LOCATE 12, 1: PRINT "You have found a spy in your country."
    score = score + 10
    spies = spies + 1
    WHILE INKEY$ = "": SLEEP: WEND
    menu
  ELSEIF search% = 1 THEN
    LOCATE 12, 1: PRINT "  You did not find any spies in your government."
    LOCATE 13, 1: PRINT "The U.S. frowns on you for being so suspicious."
    score = score - 5
    WHILE INKEY$ = "": SLEEP: WEND
    menu
  ELSEIF looks <> 0 THEN
    LOCATE 12, 1: PRINT "  The CIA and the FBI are tired of you watching them"
    LOCATE 13, 1: PRINT "They will no longer permit you to investigate."
  END IF
ELSE
  LOCATE 12, 1: PRINT "Invalid selection!!!"
  WHILE INKEY$ = "": SLEEP: WEND
  warmenu
END IF
END SUB

SUB win
CLS
SCREEN 9
PAINT (1, 1), 7
COLOR 1, 7
PRINT "  Today is a historic day in the sight of the entire world. The United"
PRINT "States of America has taken control of the world and restored peace to"
PRINT "all that did not have peace. Now the world will know what it is like to"
PRINT "have things like freedom of speech and religion. The world's suffering"
PRINT "will slowly come to a halt. Those who gave their lives in the wars that"
PRINT "it took to make it here lost there lives for the purpose of good. "
PRINT " "
PRINT "                            THE END"
WHILE INKEY$ = "": SLEEP: WEND
score = 20
looses = 0
wins = 0
looks = 8
spies = 0
main
END SUB


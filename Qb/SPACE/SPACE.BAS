DECLARE SUB playerlist ()
DECLARE SUB verifier ()
DECLARE SUB fight ()
DECLARE SUB attack ()
DECLARE SUB buy ()
DECLARE SUB sell ()
DECLARE SUB load ()
DECLARE SUB save ()
DECLARE SUB init ()
DECLARE SUB center (row, text$)
DECLARE SUB loadpal (pal$)
DECLARE SUB loadgfx (pic$)
DECLARE SUB mainmenu ()
DECLARE SUB nam ()
DECLARE SUB intro ()
DECLARE SUB leave ()
DECLARE SUB starmenu ()
DECLARE SUB inventory ()
DECLARE SUB ending ()
DECLARE SUB ending2 ()
DECLARE SUB ending3 ()
DECLARE SUB ending4 ()
DECLARE SUB event ()
DECLARE SUB doevent ()
DECLARE SUB solar ()
DECLARE SUB places ()
DECLARE SUB station ()
DECLARE SUB cantina ()
DECLARE SUB gamble ()
DECLARE SUB viewer (filnam$)
DIM SHARED nam1$
DIM SHARED nam2$
DIM SHARED nam3$
DIM SHARED stars
DIM SHARED money
DIM SHARED ships
DIM SHARED sheilds
DIM SHARED generators
DIM SHARED radar
DIM SHARED capital
DIM SHARED level
DIM SHARED who$
DIM SHARED fil$
DIM SHARED exist
DIM SHARED skipit
intro
mainmenu
DO
starmenu
LOOP

SUB attack
CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
COLOR 12
center 1, "Battle Stations"
COLOR 9
LOCATE 5, 1: PRINT "1. Invade Alien Solar System"
LOCATE 6, 1: PRINT "2. Attempt to Seize Alien Vessel"
LOCATE 7, 1: PRINT "3. Rob Alien Mining Planets"
LOCATE 8, 1: PRINT "4. Attack Alien Fleet with Your Fleet"
LOCATE 9, 1: PRINT "5. Exit Menu"
COLOR 12
LOCATE 5, 40: PRINT "Ship: "; nam3$
LOCATE 6, 40: PRINT "Name: Commander "; nam1$; " "; nam2$; " "
LOCATE 7, 40: PRINT "Money: $"; money
LOCATE 8, 40: PRINT "Star Systems: "; stars
LOCATE 9, 40: PRINT "Star Ships: "; ships
inventory
b$ = "": WHILE VAL(b$) < 1 OR VAL(b$) > 2
b$ = INKEY$
SELECT CASE b$
  CASE "1"
    IF ships = 0 THEN LOCATE 20, 1: PRINT " You have no fleet to fight with.": WHILE INKEY$ = "": SLEEP: WEND: EXIT SUB
      RANDOMIZE TIMER
      t = INT(RND * 2)
      IF t = 1 THEN
        LOCATE 20, 1: PRINT "  You have taken control of an alien star system."
        stars = stars + 1
        WHILE INKEY$ = "": SLEEP: WEND
        solar
        EXIT SUB
      ELSE
        LOCATE 20, 1: PRINT "  You have lost a ship trying to invade an alien-controled system."
        ships = ships - 1
        WHILE INKEY$ = "": SLEEP: WEND
        EXIT SUB
      END IF
  CASE "2"
   IF ships = 0 THEN LOCATE 20, 1: PRINT " You have no fleet to fight with.": WHILE INKEY$ = "": SLEEP: WEND: EXIT SUB
   RANDOMIZE TIMER
   boo = INT(RND * 2)
   COLOR 2
   IF boo = 1 THEN
     LOCATE 20, 1: PRINT "  You have successfully stolen an alien star ship."
     ships = ships + 1
     WHILE INKEY$ = "": SLEEP: WEND
     EXIT SUB
   ELSE
     LOCATE 20, 1: PRINT "  You have lost a ship trying to steal an alien star ship."
     ships = ships - 1
     WHILE INKEY$ = "": SLEEP: WEND
     EXIT SUB
   END IF
 CASE "3"
   IF ships = 0 THEN LOCATE 20, 1: PRINT " You have no fleet to fight with.": WHILE INKEY$ = "": SLEEP: WEND: EXIT SUB
   RANDOMIZE TIMER
   z = INT(RND * 2)
   COLOR 2
   IF z = 1 THEN
     LOCATE 20, 1: PRINT "  You have successfully stolen minerals from an alien mine."
     money = money + 10000
     WHILE INKEY$ = "": SLEEP: WEND
     EXIT SUB
   ELSE
     LOCATE 20, 1: PRINT "  You have lost a ship trying to steal minerals from and alien mine."
     ships = ships - 1
     WHILE INKEY$ = "": SLEEP: WEND
     EXIT SUB
   END IF
 CASE "4"
666 RANDOMIZE TIMER
   s = INT(RND * 5)
   IF ships = 0 THEN LOCATE 20, 1: PRINT " You have no fleet to fight with.": WHILE INKEY$ = "": SLEEP: WEND: EXIT SUB
   IF s = 0 THEN GOTO 666
   IF sheilds = 1 THEN GOTO 777
   t = INT(RND * 2)
   IF t = 0 THEN
     LOCATE 20, 1: PRINT "  Your fleet has lost the battle against the alien fleet."
     ships = 0
     WHILE INKEY$ = "": SLEEP: WEND
     EXIT SUB
   ELSE
777  LOCATE 20, 1: PRINT "  Your fleet has won the battle against the alien fleet."
     LOCATE 21, 1: PRINT "You take all "; s; " of their vessels."
     ships = ships + s
     WHILE INKEY$ = "": SLEEP: WEND
     EXIT SUB
   END IF
  CASE "5"
    EXIT SUB
END SELECT
WEND
END SUB

SUB buy
767 CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
COLOR 12
center 1, "Imperial Space Depot"
COLOR 9
LOCATE 5, 1: PRINT "   You are now at the supply depot."
LOCATE 6, 1: PRINT "Feel free to purchase anything in "
LOCATE 7, 1: PRINT "your price range."
COLOR 12
LOCATE 5, 40: PRINT "Ship: "; nam3$
LOCATE 6, 40: PRINT "Name: Commander "; nam1$; " "; nam2$; " "
LOCATE 7, 40: PRINT "Money: $"; money
LOCATE 8, 40: PRINT "Star Systems: "; stars
LOCATE 9, 40: PRINT "Star Ships: "; ships
LOCATE 10, 3: PRINT "1. Solar System        --  $70,0000"
LOCATE 11, 3: PRINT "2. Star Ship           --  $40,000"
LOCATE 12, 3: PRINT "3. Shield System       --  $200,000"
LOCATE 13, 3: PRINT "4. Nuclear Generators  --  $300,000"
LOCATE 14, 3: PRINT "5. Long-Distance Radar --  $300,000"
LOCATE 15, 3: PRINT "6. Exit Menu"
inventory
b$ = "": WHILE VAL(b$) < 1 OR VAL(b$) > 2
b$ = INKEY$
SELECT CASE b$
  CASE "1"
    IF money < 70000 THEN GOSUB broke
    stars = stars + 1
    money = money - 700000
    COLOR 2
    LOCATE 20, 6: PRINT "You have purchased another Star System to mine from."
    WHILE INKEY$ = "": SLEEP: WEND
    solar
    GOTO 767
  CASE "2"
    IF money < 40000 THEN GOSUB broke
    ships = ships + 1
    money = money - 40000
    COLOR 2
    LOCATE 20, 6: PRINT "You have purchased another Star Ship to add to your fleet."
    WHILE INKEY$ = "": SLEEP: WEND
    GOTO 767
  CASE "3"
    IF money < 200000 THEN GOSUB broke
    IF sheilds = 1 THEN
      COLOR 2
      LOCATE 20, 6: PRINT "You already have sheild systems installed in all ships."
      WHILE INKEY$ = "": SLEEP: WEND
      GOTO 767
    ELSEIF ships = 0 THEN
      COLOR 2
      LOCATE 20, 6: PRINT "You have no ships to upgrade."
      WHILE INKEY$ = "": SLEEP: WEND
      GOTO 767
    ELSE
      sheilds = 1
      money = money - 200000
      COLOR 2
      LOCATE 20, 6: PRINT "You have installed inpenatrable sheild systems on all ships."
      WHILE INKEY$ = "": SLEEP: WEND
      GOTO 767
    END IF
  CASE "4"
    IF money < 300000 THEN GOSUB broke
    IF generators = 1 THEN
      COLOR 2
      LOCATE 20, 6: PRINT "You already have nuclear generators on all ships."
      WHILE INKEY$ = "": SLEEP: WEND
      GOTO 767
    ELSEIF ships = 0 THEN
      COLOR 2
      LOCATE 20, 6: PRINT "You have no ships to upgrade."
      WHILE INKEY$ = "": SLEEP: WEND
      GOTO 767
    ELSE
      generators = 1
      money = money - 300000
      COLOR 2
      LOCATE 20, 6: PRINT "You have installed nuclear generators on all ships."
      LOCATE 21, 3: PRINT "You'll never have to pay for fuel again!!!"
      WHILE INKEY$ = "": SLEEP: WEND
      SCREEN 13
      loadpal "generat.pal"
      loadgfx "generat.gfx"
      WHILE INKEY$ = "": SLEEP: WEND
      GOTO 767
    END IF
  CASE "5"
    IF money < 300000 THEN GOSUB broke
    IF radar = 1 THEN
      COLOR 2
      LOCATE 20, 6: PRINT "You already have radar on all ships."
      WHILE INKEY$ = "": SLEEP: WEND
      GOTO 767
    ELSEIF ships = 0 THEN
      COLOR 2
      LOCATE 20, 6: PRINT "You have no ships to upgrade."
      WHILE INKEY$ = "": SLEEP: WEND
      GOTO 767
    ELSE
      radar = 1
      money = money - 300000
      COLOR 2
      LOCATE 20, 6: PRINT "You have installed long-range radar on all ships."
      LOCATE 21, 3: PRINT "You'll never be suprise attacked again!!!"
      WHILE INKEY$ = "": SLEEP: WEND
      SCREEN 13
      loadpal "radar.pal"
      loadgfx "radar.gfx"
      WHILE INKEY$ = "": SLEEP: WEND
      GOTO 767
    END IF
  CASE "6"
    doevent
    EXIT SUB
END SELECT
WEND
broke:
COLOR 2
LOCATE 20, 6: PRINT "You don't have enough money for this item!!!"
WHILE INKEY$ = "": SLEEP: WEND
GOTO 767
RETURN
END SUB

SUB cantina
CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
COLOR 12
center 1, "Cantina"
COLOR 9
LOCATE 5, 1: PRINT "1. Gamble"
LOCATE 6, 1: PRINT "2. Pick a Fight"
LOCATE 7, 1: PRINT "3. Player List"
LOCATE 8, 1: PRINT "4. Depart Cantina"
COLOR 12
LOCATE 5, 40: PRINT "Ship: "; nam3$
LOCATE 6, 40: PRINT "Name: Commander "; nam1$; " "; nam2$; " "
LOCATE 7, 40: PRINT "Money: $"; money
LOCATE 8, 40: PRINT "Star Systems: "; stars
LOCATE 9, 40: PRINT "Star Ships: "; ships
inventory
b$ = "": WHILE VAL(b$) < 1 OR VAL(b$) > 2
b$ = INKEY$
SELECT CASE b$
  CASE "1"
    gamble
    EXIT SUB
  CASE "2"
    fight
    EXIT SUB
  CASE "3"
    playerlist
    EXIT SUB
  CASE "4"
    EXIT SUB
END SELECT
WEND

END SUB

SUB center (row, text$)
LOCATE row, 41 - LEN(text$) / 2
PRINT text$;
END SUB

SUB doevent
event
EXIT SUB
END SUB

SUB ending
CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
COLOR 2
LOCATE 5, 1: PRINT "   You have gone bankrupt!!!  As result of this you have"
LOCATE 6, 1: PRINT "been stripped of all you own.  The name of Commander "; nam1$
LOCATE 7, 1: PRINT nam2$; " has slowly been forgotten over the years."
WHILE INKEY$ = "": SLEEP: WEND
mainmenu
END SUB

SUB ending2
CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
COLOR 2
LOCATE 5, 1: PRINT "   You have taken over 100 Solar Systems!!!  As result of"
LOCATE 6, 1: PRINT "this you have been declaired highest Commander in the Universe."
LOCATE 7, 1: PRINT "The name of Commander "; nam1$; " "; nam2$; " will go down in the history books."
WHILE INKEY$ = "": SLEEP: WEND
mainmenu

END SUB

SUB ending3
CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
COLOR 2
LOCATE 5, 1: PRINT "   You have lost all your star systems!!!  You used what"
LOCATE 6, 1: PRINT "money you have left to survive.  The name of Commander "; nam1$
LOCATE 7, 1: PRINT nam2$; " has slowly been forgotten over the years."
WHILE INKEY$ = "": SLEEP: WEND
mainmenu
END SUB

SUB ending4
CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
COLOR 2
LOCATE 5, 1: PRINT "   You have lost your capital ship!!! As result of this,"
LOCATE 6, 1: PRINT "aliens are now stealing what money and technology you had"
LOCATE 7, 1: PRINT "achieved. "
WHILE INKEY$ = "": SLEEP: WEND
mainmenu

END SUB

SUB event
CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
1 RANDOMIZE TIMER
x = INT(RND * 11)
SELECT CASE x
  CASE 0
    COLOR 2
    center 5, "** WARNING **"
    LOCATE 8, 1: PRINT "   An alien force is invading one of your systems!!!  Do you wish"
    LOCATE 9, 1: INPUT "to defend it (y/n)"; yn$
    IF yn$ = "y" AND ships > 0 THEN
      IF sheilds = 1 THEN
        LOCATE 11, 1: PRINT "The aliens couldn't destroy your ships and were defeated."
        WHILE INKEY$ = "": SLEEP: WEND
        EXIT SUB
      ELSE
        RANDOMIZE TIMER
        t = INT(RND * 2)
          IF t = 0 THEN
            LOCATE 11, 1: PRINT " The aliens have defeated one of your ships and taken the system."
            ships = ships - 1
            stars = stars - 1
            WHILE INKEY$ = "": SLEEP: WEND
            EXIT SUB
          ELSE
            LOCATE 11, 1: PRINT "The aliens couldn't destroy your ships and were defeated."
            WHILE INKEY$ = "": SLEEP: WEND
            EXIT SUB
          END IF
       END IF
     ELSE
       LOCATE 11, 1: PRINT "The aliens have taken control of the system."
       stars = stars - 1
       WHILE INKEY$ = "": SLEEP: WEND
       EXIT SUB
    END IF
  CASE 1
    COLOR 9
    LOCATE 7, 1: PRINT "  You have allied with an alien race.  They are giving you"
    LOCATE 8, 1: PRINT "control of their star system and two of their war ships."
    stars = stars + 1
    ships = ships + 2
    WHILE INKEY$ = "": SLEEP: WEND
    solar
    EXIT SUB
  CASE 2
    COLOR 9
    LOCATE 7, 1: PRINT "  You have found an uncharted solar system and claimed it yours."
    stars = stars + 1
    WHILE INKEY$ = "": SLEEP: WEND
    solar
    EXIT SUB
  CASE 3
    IF ships = 0 THEN GOTO 1
    IF radar = 1 THEN GOTO 1
    COLOR 2
    LOCATE 7, 1: PRINT "  A band of alien pirates has seized one of your ships."
    ships = ships - 1
    WHILE INKEY$ = "": SLEEP: WEND
    EXIT SUB
  CASE 4
    COLOR 9
    LOCATE 7, 1: PRINT "  You have discovered an abandoned alien ship.  You take the"
    LOCATE 8, 1: PRINT "ship and all money on board."
    ships = ships + 1
    money = money + 20000
    WHILE INKEY$ = "": SLEEP: WEND
    EXIT SUB
  CASE 5
    COLOR 2
    LOCATE 7, 1: PRINT "  Super-Nova!!!  One of your star systems has been blown to "
    LOCATE 8, 1: PRINT "to bits by an exploding star."
    stars = stars - 1
    WHILE INKEY$ = "": SLEEP: WEND
    EXIT SUB
  CASE 6
    COLOR 2
    LOCATE 7, 1: PRINT "  Workers on a mining planet have gone on strike.  You must pay"
    LOCATE 8, 1: PRINT "$50,000 to keep them working."
    money = money - 50000
    WHILE INKEY$ = "": SLEEP: WEND
    EXIT SUB
  CASE 7
    COLOR 9
    LOCATE 7, 1: PRINT "  You have found a mineral rich asteroid belt and earned $100,000"
    LOCATE 8, 1: PRINT "for mining it."
    money = money + 100000
    WHILE INKEY$ = "": SLEEP: WEND
    EXIT SUB
  CASE 8
    IF radar = 0 THEN GOTO 1
    COLOR 2
    center 5, "** WARNING **"
    LOCATE 8, 1: PRINT "   Radar detects an alien force is approaching one of your systems!!!"
    LOCATE 9, 1: INPUT "Do you wish to defend it (y/n)"; yn$
    IF yn$ = "y" AND ships > 0 THEN
      IF sheilds = 1 THEN
        LOCATE 11, 1: PRINT "The aliens couldn't destroy your ships and were defeated."
        WHILE INKEY$ = "": SLEEP: WEND
        EXIT SUB
      ELSE
        RANDOMIZE TIMER
        t = INT(RND * 2)
          IF t = 0 THEN
            LOCATE 11, 1: PRINT " The aliens have defeated one of your ships and taken the system."
            ships = ships - 1
            stars = stars - 1
            WHILE INKEY$ = "": SLEEP: WEND
            EXIT SUB
          ELSE
            LOCATE 11, 1: PRINT "The aliens couldn't destroy your ships and were defeated."
            WHILE INKEY$ = "": SLEEP: WEND
            EXIT SUB
          END IF
       END IF
     ELSE
       LOCATE 11, 1: PRINT "The aliens have taken control of the system."
       stars = stars - 1
       WHILE INKEY$ = "": SLEEP: WEND
       EXIT SUB
    END IF
  CASE 9
    IF generators = 0 THEN GOTO 1
    IF ships = 0 THEN GOTO 1
    COLOR 2
    LOCATE 7, 1: PRINT "  The nuclear power generators on one of your ships has malfunctioned."
    LOCATE 8, 1: PRINT "The ship and it's crew have been lost."
    ships = ships - 1
    WHILE INKEY$ = "": SLEEP: WEND
    EXIT SUB
  CASE 10
    IF radar = 0 THEN GOTO 1
    COLOR 2
    LOCATE 7, 1: PRINT "  Radar has detected an alien ship aproaching one of your systems."
    LOCATE 8, 1: INPUT "Do you wish to defend the system (y/n)"; yn$
    IF yn$ = "y" AND ships > 0 THEN
      IF sheilds = 1 THEN
        LOCATE 11, 1: PRINT "The aliens couldn't destroy your ships and were defeated."
        WHILE INKEY$ = "": SLEEP: WEND
        EXIT SUB
      ELSE
        RANDOMIZE TIMER
        t = INT(RND * 2)
          IF t = 0 THEN
            LOCATE 11, 1: PRINT " The aliens have defeated one of your ships and taken the system."
            ships = ships - 1
            stars = stars - 1
            WHILE INKEY$ = "": SLEEP: WEND
            EXIT SUB
          ELSE
            LOCATE 11, 1: PRINT "The aliens couldn't destroy your ships and were defeated."
            WHILE INKEY$ = "": SLEEP: WEND
            EXIT SUB
          END IF
       END IF
     ELSE
       LOCATE 11, 1: PRINT "The aliens have taken control of the system."
       stars = stars - 1
       WHILE INKEY$ = "": SLEEP: WEND
       EXIT SUB
    END IF
  CASE 11
    RANDOMIZE TIMER
    s = INT(RND * 4)
    IF s <> 0 THEN GOTO 1
    COLOR 9
    LOCATE 7, 1: PRINT "  Slab the Impailer, the intergalactic warrior of justice,"
    LOCATE 8, 1: PRINT "has conquered 3 star systems, 3 alien ships, and stolen"
    LOCATE 9, 1: PRINT "$200,000 from alien strongholds and is giving you these "
    LOCATE 10, 1: PRINT "items."
    stars = stars + 3
    ships = ships + 3
    money = money + 200000
    WHILE INKEY$ = "": SLEEP: WEND
    solar
    EXIT SUB
  CASE 12
    RANDOMIZE TIMER
    s = INT(RND * 4)
    IF s <> 0 THEN GOTO 1
    IF radar = 0 THEN GOTO 1
    COLOR 2
    LOCATE 7, 1: PRINT "  Radar has detected an alien ship aproaching your capital ship."
    IF ships > 0 THEN
      IF sheilds = 1 THEN
        LOCATE 11, 1: PRINT "The aliens couldn't destroy your ships and were defeated."
        WHILE INKEY$ = "": SLEEP: WEND
        EXIT SUB
      ELSE
        RANDOMIZE TIMER
        t = INT(RND * 2)
          IF t = 0 THEN
            LOCATE 11, 1: PRINT " The aliens have defeated your capital ship."
            capital = 0
            WHILE INKEY$ = "": SLEEP: WEND
            EXIT SUB
          ELSE
            LOCATE 11, 1: PRINT "The aliens couldn't destroy your ships and were defeated."
            WHILE INKEY$ = "": SLEEP: WEND
            EXIT SUB
          END IF
       END IF
    END IF
  END SELECT
END SUB

SUB fight
CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
COLOR 12
center 1, "Fight!!!"
COLOR 9
LOCATE 5, 1: INPUT "Who do you wish to fight"; who$
verifier
IF LEN(who$) > 8 THEN
  fil$ = MID$(nam1$, 1, 8) + ".dat"
ELSE
  fil$ = who$ + ".dat"
END IF
IF exist = 1 THEN EXIT SUB
RESET
OPEN fil$ FOR INPUT AS #1
CLOSE #1
RANDOMIZE TIMER
barf = INT(RND * 2)
IF barf <> 0 THEN PRINT "You lost the fight and "; who$; " has taken one of your stars.": stars = stars - 1: WHILE INKEY$ = "": SLEEP: WEND: GOSUB lost: EXIT SUB
IF barf = 0 THEN PRINT "You won the fight and gained a star.": stars = stars + 1: WHILE INKEY$ = "": SLEEP: WEND: GOSUB won: EXIT SUB

lost:
ynam1$ = nam1$
ynam2$ = nam2$
ynam3$ = nam3$
yships = ships
ymoney = money
ygenerators = generators
ysheilds = sheilds
yradar = radar
ystars = stars
OPEN fil$ FOR INPUT AS #1
INPUT #1, nam1$
INPUT #1, nam2$
INPUT #1, nam3$
INPUT #1, ships
INPUT #1, stars
INPUT #1, money
INPUT #1, generators
INPUT #1, sheilds
INPUT #1, radar
CLOSE #1
stars = stars + 1
OPEN fil$ FOR OUTPUT AS #1
WRITE #1, nam1$
WRITE #1, nam2$
WRITE #1, nam3$
WRITE #1, ships
WRITE #1, stars
WRITE #1, money
WRITE #1, generators
WRITE #1, sheilds
WRITE #1, radar
CLOSE #1
stars = ystars
nam1$ = ynam1$
nam2$ = ynam2$
nam3$ = ynam3$
ships = yships
money = ymoney
generators = ygenerators
sheilds = ysheilds
radar = yradar
stars = ystars
RETURN

won:
ynam1$ = nam1$
ynam2$ = nam2$
ynam3$ = nam3$
yships = ships
ymoney = money
ygenerators = generators
ysheilds = sheilds
yradar = radar
ystars = stars
OPEN fil$ FOR INPUT AS #1
INPUT #1, nam1$
INPUT #1, nam2$
INPUT #1, nam3$
INPUT #1, ships
INPUT #1, stars
INPUT #1, money
INPUT #1, generators
INPUT #1, sheilds
INPUT #1, radar
CLOSE #1
IF stars = 0 THEN GOTO 4
stars = stars - 1
OPEN fil$ FOR OUTPUT AS #1
WRITE #1, nam1$
WRITE #1, nam2$
WRITE #1, nam3$
WRITE #1, ships
WRITE #1, stars
WRITE #1, money
WRITE #1, generators
WRITE #1, sheilds
WRITE #1, radar
4 CLOSE #1
stars = ystars
nam1$ = ynam1$
nam2$ = ynam2$
nam3$ = ynam3$
ships = yships
money = ymoney
generators = ygenerators
sheilds = ysheilds
radar = yradar
stars = ystars
RETURN

END SUB

SUB gamble
838  CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
COLOR 12
center 1, "Gambling  Casino"
COLOR 9
LOCATE 5, 1: INPUT "How much money do you wish to bet"; mon
IF mon > money THEN PRINT "This exceeds your limit!!!": GOTO 838
LOCATE 7, 1: PRINT "  You will have 7 tries to guess the number I'm thinking of"
LOCATE 8, 1: PRINT "between 1 and 100.  Remember, you only get 7 tries!!!"
WHILE INKEY$ = "": SLEEP: WEND
444 CLS
RANDOMIZE TIMER
x = INT(RND * 100)
IF x = 0 THEN GOTO 444
t = 1
DO
INPUT "Guess the number -- ", num
t = t + 1
IF num > x THEN PRINT "That's too high!!!": PRINT
IF num < x THEN PRINT "That's too low!!!": PRINT
IF num = x THEN GOSUB win
LOOP UNTIL t = 8
IF t > 7 THEN GOSUB loose
win:
PRINT "You win!!!!"
money = money + mon
INPUT "Do you wish to play again"; yn$
IF yn$ = "y" THEN
  GOTO 838
ELSE
  EXIT SUB
END IF
loose:
PRINT "You loose!!!:"
money = money - mon
INPUT "Do you wish to play again"; yn$
IF yn$ = "y" THEN
  GOTO 838
ELSE
  EXIT SUB
END IF
END SUB

SUB init
money = 150000
ships = 2
stars = 0
generators = 0
sheilds = 0
radar = 0
capital = 1
END SUB

SUB intro
SCREEN 13
loadpal "door1.pal"
loadgfx "door1.gfx"
WHILE INKEY$ = "": SLEEP: WEND
CLS
loadpal "title.pal"
loadgfx "title.gfx"
WHILE INKEY$ = "": SLEEP: WEND
END SUB

SUB inventory
COLOR 11
LOCATE 14, 50: PRINT "Inventory:"
IF sheilds = 1 THEN LOCATE 16, 55: PRINT "Sheild Systems"
IF generators = 1 THEN LOCATE 17, 55: PRINT "Nuclear Generators"
IF radar = 1 THEN LOCATE 18, 55: PRINT "Long-Range Radar"
IF sheilds = 0 AND generators = 0 AND radar = 0 THEN LOCATE 17, 55: PRINT "Nothing"
END SUB

SUB leave
CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
COLOR 12
center 16, "Thank you for using Tyrant Software"
WHILE INKEY$ = "": SLEEP: WEND
END SUB

SUB load
CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
IF LEN(nam1$) > 8 THEN
fil$ = MID$(nam1$, 1, 8) + ".dat"
ELSE
fil$ = nam1$ + ".dat"
END IF
COLOR 9
center 1, "Load Game"
LOCATE 3, 1: PRINT "Loading..."
SLEEP 1
fil$ = nam1$ + ".dat"
OPEN fil$ FOR INPUT AS #1
INPUT #1, nam1$
INPUT #1, nam2$
INPUT #1, nam3$
INPUT #1, ships
INPUT #1, stars
INPUT #1, money
INPUT #1, generators
INPUT #1, sheilds
INPUT #1, radar
LOCATE 4, 1: PRINT "Game loaded."
CLOSE #1
WHILE INKEY$ = "": SLEEP: WEND
EXIT SUB
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

SUB mainmenu
CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 640)
y = INT(RND * 480)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
COLOR 12
center 1, "SPACE  REIGN"
COLOR 9
LOCATE 5, 1: PRINT "1. Start game."
LOCATE 6, 1: PRINT "2. Veiw ReadMe file."
LOCATE 7, 1: PRINT "3. Exit game."
b$ = "": WHILE VAL(b$) < 1 OR VAL(b$) > 2
b$ = INKEY$
SELECT CASE b$
  CASE "1"
    init
    nam
    EXIT SUB
  CASE "2"
    SCREEN 0
    viewer "space.txt"
    mainmenu
  CASE "3"
    leave
    END
END SELECT
WEND
END SUB

SUB nam
333 CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
COLOR 9
LOCATE 3, 1
: INPUT "What is your first name"; nam1$
x = 1
WHILE (MID$(nam1$, x, 1) <> " ") AND (x < LEN(nam1$))
x = x + 1
IF MID$(nam1$, x, 1) = " " THEN GOTO 333
WEND
LOCATE 4, 1: INPUT "What is your last name"; nam2$
x = 1
WHILE (MID$(nam2$, x, 1) <> " ") AND (x < LEN(nam2$))
x = x + 1
IF MID$(nam2$, x, 1) = " " THEN GOTO 333
WEND
LOCATE 5, 1: INPUT "What do you wish to name your capital ship"; nam3$
END SUB

SUB places
CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
COLOR 12
center 1, "SPACE  REIGN"
COLOR 9
LOCATE 5, 1: PRINT "1. Supply Depot"
LOCATE 6, 1: PRINT "2. Cantina"
LOCATE 7, 1: PRINT "3. Space Station Alpha"
LOCATE 8, 1: PRINT "4. Return to the Black Void of Space"
COLOR 12
LOCATE 5, 40: PRINT "Ship: "; nam3$
LOCATE 6, 40: PRINT "Name: Commander "; nam1$; " "; nam2$; " "
LOCATE 7, 40: PRINT "Money: $"; money
LOCATE 8, 40: PRINT "Star Systems: "; stars
LOCATE 9, 40: PRINT "Star Ships: "; ships
inventory
b$ = "": WHILE VAL(b$) < 1 OR VAL(b$) > 2
b$ = INKEY$
SELECT CASE b$
  CASE "1"
    station
    EXIT SUB
  CASE "2"
    cantina
    EXIT SUB
  CASE "3"
    station
    EXIT SUB
  CASE "4"
    EXIT SUB
END SELECT
WEND
END SUB

SUB playerlist
CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
COLOR 12
center 1, "Player List"
COLOR 9
OPEN "playrlst.dat" FOR INPUT AS #1
x = 0
DO
x = x + 1
LINE INPUT #1, align$
center x + 2, align$
IF x = 20 THEN WHILE INKEY$ = "": SLEEP: WEND: x = 0
LOOP WHILE NOT EOF(1)
WHILE INKEY$ = "": SLEEP: WEND
RESET
END SUB

SUB save
CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
who$ = nam1$
COLOR 0
skipit = 1
verifier
skipit = 0
RESET
IF exist = 1 THEN
  OPEN "playrlst.dat" FOR APPEND AS #1
  PRINT #1, nam1$
  CLOSE #1
END IF
IF LEN(nam1$) > 8 THEN
fil$ = MID$(nam1$, 1, 8) + ".dat"
ELSE
fil$ = nam1$ + ".dat"
END IF
COLOR 9
center 1, "Save Game"
LOCATE 3, 1: PRINT "Saving..."
SLEEP 1
OPEN fil$ FOR OUTPUT AS #1
WRITE #1, nam1$
WRITE #1, nam2$
WRITE #1, nam3$
WRITE #1, ships
WRITE #1, stars
WRITE #1, money
WRITE #1, generators
WRITE #1, sheilds
WRITE #1, radar
LOCATE 4, 1: PRINT "Game saved."
CLOSE #1
WHILE INKEY$ = "": SLEEP: WEND
EXIT SUB
END SUB

SUB sell
676 CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
COLOR 12
center 1, "Imperial Space Depot"
COLOR 9
LOCATE 5, 1: PRINT "   You are now at the space depot."
LOCATE 6, 1: PRINT "Feel free to sell anything in your "
LOCATE 7, 1: PRINT "possession"
COLOR 12
LOCATE 5, 40: PRINT "Ship: "; nam3$
LOCATE 6, 40: PRINT "Name: Commander "; nam1$; " "; nam2$; " "
LOCATE 7, 40: PRINT "Money: $"; money
LOCATE 8, 40: PRINT "Star Systems: "; stars
LOCATE 9, 40: PRINT "Star Ships: "; ships
LOCATE 10, 3: PRINT "1. Solar System        --  $70,0000"
LOCATE 11, 3: PRINT "2. Star Ship           --  $40,000"
LOCATE 12, 3: PRINT "3. Shield System       --  $200,000"
LOCATE 13, 3: PRINT "4. Nuclear Generators  --  $300,000"
LOCATE 14, 3: PRINT "5. Long-Range Radar    --  $500,000"
LOCATE 15, 3: PRINT "6. Exit Menu"
inventory
b$ = "": WHILE VAL(b$) < 1 OR VAL(b$) > 2
b$ = INKEY$
SELECT CASE b$
  CASE "1"
    stars = stars - 1
    money = money + 700000
    COLOR 2
    LOCATE 20, 6: PRINT "You have sold a Star System."
    WHILE INKEY$ = "": SLEEP: WEND
    GOTO 676
  CASE "2"
    COLOR 2
    IF ships = 0 THEN LOCATE 20, 6: PRINT "You have no ships to sell": WHILE INKEY$ = "": SLEEP: WEND: GOTO 676
    ships = ships - 1
    money = money + 40000
    COLOR 2
    LOCATE 20, 6: PRINT "You have sold a Star Ship."
    WHILE INKEY$ = "": SLEEP: WEND
    GOTO 676
  CASE "3"
    IF sheilds = 0 THEN
      COLOR 2
      LOCATE 20, 6: PRINT "You have no sheild systems installed."
      WHILE INKEY$ = "": SLEEP: WEND
      GOTO 676
    ELSE
      sheilds = 0
      money = money + 200000
      COLOR 2
      LOCATE 20, 6: PRINT "You have sold inpenatrable sheild systems."
      WHILE INKEY$ = "": SLEEP: WEND
      GOTO 676
    END IF
  CASE "4"
    IF generators = 0 THEN
      COLOR 2
      LOCATE 20, 6: PRINT "You have no nuclear generators."
      WHILE INKEY$ = "": SLEEP: WEND
      GOTO 676
    ELSE
      generators = 0
      money = money + 300000
      COLOR 2
      LOCATE 20, 6: PRINT "You have sold all nuclear generators."
      LOCATE 21, 3: PRINT "You'll have to pay for fuel again."
      WHILE INKEY$ = "": SLEEP: WEND
      GOTO 676
      END IF
  CASE "5"
    IF radar = 0 THEN
      COLOR 2
      LOCATE 20, 6: PRINT "You have no radar."
      WHILE INKEY$ = "": SLEEP: WEND
      GOTO 676
    ELSE
      radar = 0
      money = money + 500000
      COLOR 2
      LOCATE 20, 6: PRINT "You have sold long-range radar."
      WHILE INKEY$ = "": SLEEP: WEND
      GOTO 676
    END IF
  CASE "6"
    doevent
    EXIT SUB
END SELECT
WEND
END SUB

SUB solar
RANDOMIZE TIMER
x = INT(RND * 3)
IF x = 0 THEN
  g$ = "solar1.gfx"
  p$ = "solar1.pal"
ELSEIF x = 1 THEN
  g$ = "solar2.gfx"
  p$ = "solar2.pal"
ELSE
  g$ = "solar3.gfx"
  p$ = "solar3.pal"
END IF
SCREEN 13
loadpal p$
loadgfx g$
WHILE INKEY$ = "": SLEEP: WEND
END SUB

SUB starmenu
IF generators = 0 THEN money = money - (500 * ships)
IF stars < 0 THEN stars = 0
IF stars > 0 AND stars < 10 THEN level = 1
IF stars >= 10 AND stars < 20 THEN level = 2
IF stars >= 20 AND stars < 30 THEN level = 3
IF stars >= 30 AND stars < 40 THEN level = 4
IF stars > 40 AND stars < 50 THEN level = 5
IF stars >= 60 AND stars < 70 THEN level = 6
IF stars > 70 AND stars < 80 THEN level = 7
IF stars >= 80 AND stars < 90 THEN level = 8
IF stars > 90 AND stars < 100 THEN level = 9
IF stars >= 100 THEN level = 10
IF level = 10 THEN ending2
IF capital = 0 THEN ending4
money = money + (5000 * stars)
CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
COLOR 12
center 1, "SPACE  REIGN"
COLOR 9
LOCATE 5, 1: PRINT "1. Travel"
LOCATE 6, 1: PRINT "2. Enter Alien Territory"
LOCATE 7, 1: PRINT "3. Return to Reality"
COLOR 12
LOCATE 5, 40: PRINT "Ship: "; nam3$
LOCATE 6, 40: PRINT "Name: Commander "; nam1$; " "; nam2$; " "
LOCATE 7, 40: PRINT "Money: $"; money
LOCATE 8, 40: PRINT "Star Systems: "; stars
LOCATE 9, 40: PRINT "Star Ships: "; ships
inventory
b$ = "": WHILE VAL(b$) < 1 OR VAL(b$) > 2
b$ = INKEY$
SELECT CASE b$
  CASE "1"
    places
    EXIT SUB
  CASE "2"
    attack
    EXIT SUB
  CASE "3"
    mainmenu
    EXIT SUB
END SELECT
WEND
END SUB

SUB station
CLS
SCREEN 12
PAINT (1, 1), 0
FOR q = 1 TO 200
RANDOMIZE TIMER
x = INT(RND * 639)
y = INT(RND * 479)
c = INT(RND * 15)
PSET (x, y), c
NEXT q
COLOR 12
center 1, "Space  Station  Alpha"
COLOR 9
LOCATE 5, 1: PRINT "1. Save Game"
LOCATE 6, 1: PRINT "2. Load Game"
LOCATE 7, 1: PRINT "3. Quit Game"
LOCATE 8, 1: PRINT "4. Depart Space Station"
COLOR 12
LOCATE 5, 40: PRINT "Ship: "; nam3$
LOCATE 6, 40: PRINT "Name: Commander "; nam1$; " "; nam2$; " "
LOCATE 7, 40: PRINT "Money: $"; money
LOCATE 8, 40: PRINT "Star Systems: "; stars
LOCATE 9, 40: PRINT "Star Ships: "; ships
inventory
b$ = "": WHILE VAL(b$) < 1 OR VAL(b$) > 2
b$ = INKEY$
SELECT CASE b$
  CASE "1"
    save
    EXIT SUB
  CASE "2"
    load
    EXIT SUB
  CASE "3"
    leave
    EXIT SUB
  CASE "4"
    EXIT SUB
END SELECT
WEND
END SUB

SUB verifier
RESET
OPEN "playrlst.dat" FOR INPUT AS #1
b$ = who$
exist = 0
x = 0
DO
LINE INPUT #1, align$
IF align$ = b$ THEN x = 1: EXIT DO
LOOP WHILE NOT EOF(1)
IF x <> 1 THEN
  IF skipit = 1 THEN GOTO 55555
  PRINT "That character doesn't exist."
  RESET
  WHILE INKEY$ = "": SLEEP: WEND
55555 exist = 1
  EXIT SUB
ELSE
  RESET
  EXIT SUB
END IF
END SUB

SUB viewer (filnam$)
SCREEN 0
CLS
OPEN filnam$ FOR INPUT AS #1
x = 0
DO
INPUT #1, align$
x = x + 1
center x, align$
IF x = 26 THEN
  WHILE INKEY$ = "": SLEEP: WEND
  x = 0
END IF
LOOP WHILE NOT EOF(1)
CLOSE #1
WHILE INKEY$ = "": SLEEP: WEND
END SUB


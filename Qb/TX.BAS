DECLARE SUB j ()
DECLARE SUB i ()
DECLARE SUB h ()
DECLARE SUB g ()
DECLARE SUB f ()
DECLARE SUB m ()
DECLARE SUB l ()
DECLARE SUB k ()
DECLARE SUB p ()
DECLARE SUB o ()
DECLARE SUB n ()
DECLARE SUB r ()
DECLARE SUB q ()
DECLARE SUB s ()
DECLARE SUB t ()
DECLARE SUB u ()
DECLARE SUB v ()
DECLARE SUB x ()
DECLARE SUB w ()
DECLARE SUB game ()
DECLARE SUB z ()
DECLARE SUB y ()
DECLARE SUB instr. ()
CLS
SHELL "cd\aaplay"
SHELL "aaplay Lucky7.gif"
SLEEP 2
CLS
LOCATE 15, 30
COLOR 11
PRINT "1. Instructions"
LOCATE 16, 30
PRINT "2. Play Game"
INPUT ">", a%
IF a% = 1 THEN
instr.
END IF
IF a% = 2 THEN
game
END IF
SLEEP 2
CLS

SUB c

END SUB

SUB f
COLOR 12
LOCATE 1, 1
PRINT "You didn't think you would make it up the ladder but you did!  But as climbing through the window...that's another story!"
LOCATE 4, 1
PRINT "Gee, this was the last one too!  Maybe I should give you one last shot at that one?...naaaa!"
SLEEP 3
CLS
SHELL "cd\aaplay"
SHELL "aaplay number11.gif"
SLEEP 3
CLS
LOCATE 15, 30
PRINT "Please play again!  Thanx for playing Tyrant (X) software!"
SLEEP 10
CLS
END SUB

SUB g
COLOR 12
SLEEP 2
CLS
LOCATE 1, 1
PRINT "YYYess!  You didn't think it would ever end!  You go through the door and see the cops arresting the kidnapper!"
LOCATE 3, 1
PRINT "You are now a national hero!  Many have been kidnapped and tried to make it through the house, but all have failed!"
LOCATE 15, 30
PRINT "Congratulations!"
SLEEP 7
CLS
COLOR 10
LOCATE 10, 25
PRINT "Programed by:  Michael Hughes"
SLEEP 2
CLS
COLOR 11
LOCATE 15, 25
PRINT "Other people affiliated with (X) Tyrant software:"
LOCATE 20, 25
PRINT "Jeffrey Cox and"
LOCATE 21, 25
PRINT "Travis Larson"
END SUB

SUB game
LOCATE 15, 15
PRINT "1.  You are looking at a grey door that is old."
LOCATE 16, 15
PRINT "2.  Also a tunnel, which is all wet and damp."
LOCATE 18, 15
PRINT "Which will it be?"
INPUT ">", a%
IF a% = 1 THEN
z
END IF
IF a% = 2 THEN
y
END IF
END SUB

SUB h
COLOR 12
SLEEP 2
CLS
LOCATE 15, 30
PRINT "You feel like Indiana Jones.    "
LOCATE 17, 1
PRINT "Just as the rope breaks...you make it to the ground!"
LOCATE 18, 1
PRINT "Lucky you!"
SLEEP 3
CLS
PRINT "This is the last one!!!"
SLEEP 2
LOCATE 15, 30
COLOR 2
PRINT "1. Open up the door or..."
LOCATE 16, 30
PRINT "2. climb up the ladder and go through the window?"
INPUT ">", a%
IF a% = 1 THEN
g
END IF
IF a% = 2 THEN
f
END IF
END SUB

SUB i
COLOR 12
SLEEP 2
CLS
LOCATE 15, 30
PRINT "You slide down into a king-sized fish tank filled with paranahs!"
LOCATE 16, 1
PRINT "You are eaten alive!..OUCH!"
SLEEP 3
CLS
SLEEP 3
SHELL "cd\aaplay"
SHELL "aaplay nubmer10.gif"
SLEEP 3
CLS
END SUB

SUB instr.
COLOR 4
LOCATE 1, 1
PRINT "You are trying to find your way through the house.  You will have to"
LOCATE 2, 1
PRINT "choose wisely on which direction to go.  You will be helped on the way"
LOCATE 3, 1
PRINT "by certain items telling you which way to go.  Thanx for playing."
END SUB

SUB j
SLEEP 2
CLS
LOCATE 15, 30
COLOR 12
PRINT "You are walking down when...the stairs turn into a slide!"
LOCATE 16, 1
PRINT "You slide down into swampy water and see alligators!"
LOCATE 17, 1
PRINT "They have you for supper!"
SLEEP 4
CLS
SHELL "cd\aaplay"
SHELL "aaplay number9.gif"
SLEEP 3
CLS
END SUB

SUB k
COLOR 2
LOCATE 15, 30
PRINT "You light a match and...BOOM!  A room filled with gas and we all know that fire and gas don't mix!  (especially Jimmy's gas!)"
SLEEP 2
CLS
SHELL "cd\aaplay"
SHELL "aaplay number8.gif"
SLEEP 3
CLS
LOCATE 18, 30
PRINT "Tyrant X software!  Play again please!!!"
SLEEP 6
CLS
END SUB

SUB l
COLOR 2
LOCATE 15, 30
PRINT "Oh no!  You feel slimey snakes crawl all over you!!!"
COLOR 11
SLEEP 2
SHELL "cd\aaplay"
SHELL "aaplay number7.gif"
SLEEP 3
CLS
LOCATE 20, 30
PRINT "Thanx for playing (X) Tyrant software!...you got so close!  Please play again!"
SLEEP 4
CLS
END SUB

SUB m
COLOR 2
SLEEP 3
CLS
LOCATE 15, 30
PRINT "Right, now just a few more to go!..."
LOCATE 20, 30
COLOR 11
PRINT "Michael Hughes wuz here"
SLEEP 3
CLS
LOCATE 1, 1
COLOR 11
PRINT " 1. Now, you see an open door which appears to be a staircase."
LOCATE 2, 1
PRINT " 2. You also see a slide you can take down."
LOCATE 3, 1
PRINT " 3. Or you swing on a loose rope down to the first floor."
LOCATE 15, 30
PRINT "Where is you destination?"
INPUT ">", a%
IF a% = 1 THEN
j
END IF
IF a% = 2 THEN
i
END IF
IF a% = 3 THEN
h
END IF
END SUB

SUB n
COLOR 11
SLEEP 3
CLS
LOCATE 15, 1
PRINT "You walk past a cencor and an alarm sounds and knifes start coming at you....you"
LOCATE 16, 1
PRINT "can guess what happens next!  SPLAT!"
SLEEP 3
CLS
SHELL "cd\aaplay"
SHELL "aaplay number6.gif"
SLEEP 3
CLS
END SUB

SUB o
COLOR 11
SLEEP 3
CLS
LOCATE 9, 10
PRINT "Correct!  You get laid by a girl named Beatrice and she tells you where"
LOCATE 10, 1
PRINT "to go next!"
LOCATE 20, 30
PRINT "You feel the end is near!"
SLEEP 3
CLS
COLOR 2
LOCATE 1, 1
PRINT "You had better think hard here!"
SLEEP 2
CLS
COLOR 7
LOCATE 15, 30
PRINT "1.  Turn on light?"
LOCATE 16, 30
PRINT "2.  Find your way through?"
LOCATE 17, 30
PRINT "3.  Light a match?"
INPUT ">", a%
IF a% = 1 THEN
m
END IF
IF a% = 2 THEN
l
END IF
IF a% = 3 THEN
k
END IF
END SUB

SUB p
COLOR 11
SLEEP 3
CLS
LOCATE 18, 10
PRINT "You slowly walk in there and you don't know what hit you!  You find"
LOCATE 19, 1
PRINT "yourself roasting over a nice fire!....TOASTY!!!"
SLEEP 3
CLS
SHELL "cd\aaplay"
SHELL "aaplay number5.gif"
SLEEP 3
CLS
LOCATE 20, 30
PRINT "Thanx for playing (X) Tyrant software!"
SLEEP 2
CLS
END SUB

SUB q
COLOR 12
SLEEP 2
CLS
LOCATE 1, 1
PRINT "Gee, that wuzn't too hard now wuz it?"
SLEEP 2
CLS
LOCATE 15, 30
PRINT "See how easy this is!"
SLEEP 2
CLS
COLOR 13
LOCATE 15, 30
PRINT "1. Go to the den,"
LOCATE 16, 30
PRINT "2. into the bedroom,"
LOCATE 17, 30
PRINT "3. or the kitchen?"
INPUT ">", a%
IF a% = 1 THEN
p
END IF
IF a% = 2 THEN
o
END IF
IF a% = 3 THEN
n
END IF
END SUB

SUB r
COLOR 12
SLEEP 4
CLS
LOCATE 5, 1
PRINT "You pull on the rope and the ceiling falls out on you.  That wuz stupid!  Any normal person would have just taken the stairs!"
SLEEP 3
CLS
SHELL "cd\aaplay"
SHELL "aaplay number4.gif"
LOCATE 15, 30
PRINT "Too bad you lost, but try again and thanx for playing (X) Tyrant software!"
SLEEP 2
CLS
END SUB

SUB s
COLOR 13
SLEEP 2
CLS
LOCATE 1, 10
PRINT "Whoa!  A secret passage.  You slide down it and find secret rooms!"
SLEEP 2
CLS
COLOR 12
LOCATE 15, 30
PRINT "1. Now, try to pull yourself up the rope to the next floor or..."
LOCATE 17, 30
PRINT "2. just take the stairs?"
INPUT ">", a%
IF a% = 1 THEN
r
END IF
IF a% = 2 THEN
q
END IF
END SUB

SUB t
COLOR 13
SLEEP 3
CLS
LOCATE 25, 1
PRINT "Oh no!  You slip and get flushed down the Tyran brand toilet!...sucker!"
SLEEP 2
CLS
SHELL "cd\aaplay"
SHELL "aaplay number3.gif"
SLEEP 3
CLS
LOCATE 20, 1
PRINT "Try this again?  (X) Tyrant."
SLEEP 2
CLS
END SUB

SUB u
COLOR 14
SLEEP 3
CLS
LOCATE 15, 30
PRINT "Oh no!  The wall collapses and crushes you!"
LOCATE 16, 30
SLEEP 2
CLS
SHELL "cd\aaplay"
SHELL "aaplay number0.gif"
SLEEP 3
CLS
PRINT "Thanx for playing (X) Tyrant software!"
SLEEP 2
CLS
END SUB

SUB v
COLOR 5
SLEEP 2
CLS
LOCATE 7, 30
PRINT "YYYessss!!!  You made it!  That wuz close!"
SLEEP 2
CLS
COLOR 14
LOCATE 15, 30
PRINT "Try your luck here!"
SLEEP 2
CLS
COLOR 14
LOCATE 15, 30
PRINT "1.  Now, try to climb on the toilet and crawl out the window to safety or..."
LOCATE 17, 30
PRINT "2. open up the cabinet and see what you find?"
INPUT ">", a%
IF a% = 1 THEN
t
END IF
IF a% = 2 THEN
s
END IF
END SUB

SUB w
COLOR 1
SLEEP 3
CLS
LOCATE 15, 30
PRINT "Ahhhh....you fall to your death in a pile of Black Widows!!!  Please play again.  (X)."
SLEEP 2
CLS
SHELL "cd\aaplay"
SHELL "aaplay number2.gif"
SLEEP 3
CLS
END SUB

SUB x
COLOR 1
SLEEP 2
CLS
LOCATE 10, 15
PRINT "Alright, way to go!"
SLEEP 2
CLS
COLOR 4
SLEEP 2
CLS
LOCATE 15, 25
PRINT "Test your might here!"
SLEEP 2
CLS
COLOR 6
LOCATE 15, 30
PRINT "1. Try to jump over the 4yd. crack or..."
LOCATE 16, 30
PRINT "2. crawl under the unfinished wall?"
INPUT ">", a%
IF a% = 1 THEN
v
END IF
IF a% = 2 THEN
u
END IF
END SUB

SUB y
COLOR 9
SLEEP 3
CLS
LOCATE 15, 30
PRINT "You have chosen...Wisely.  Alright hotshot, try this one!"
SLEEP 2
CLS
COLOR 15
LOCATE 15, 30
PRINT "1.  You can now climb up the ladder..."
LOCATE 16, 30
PRINT "2.  or crawl down the hole in the floor."
COLOR 2
LOCATE 20, 25
PRINT "What is your destiny?"
INPUT ">", a%
IF a% = 1 THEN
x
END IF
IF a% = 2 THEN
w
END IF
END SUB

SUB z
COLOR 9
SLEEP 3
CLS
LOCATE 15, 15
PRINT "You have chosen...Poorly.  Please play again.  (X)."
SLEEP 2
CLS
SHELL "cd\aaplay"
SHELL "aaplay number1.gif"
SLEEP 3
CLS
END SUB

                                                                                                                   
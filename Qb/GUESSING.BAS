0.1 BEEP
0.2 BEEP
0.5 z = 0
1 CLS
2 LOCATE 15, 15
5 PRINT "This is a number game with no name! v 1.0"
10 WHILE INKEY$ = "": WEND
15 CLS
20 RANDOMIZE TIMER
23 z = 0
25 guess = INT(RND * 100) + 1
30 LOCATE 15, 15
32 PLAY "o5 l5c l5c l5c"
35 PRINT "Pick a number between 1 and 100  777 = quit"
36 z = z + 1
40 INPUT choice
45 IF choice = 777 THEN GOTO 1999
50 IF choice = guess THEN GOTO 1000
55 IF choice > guess THEN GOTO 600
56 IF choice < guess THEN GOTO 500
500 PRINT "Higher you buttmunchie!"
503 WHILE INKEY$ = "": WEND
505 CLS
510 GOTO 35
600 PRINT "Lower you spazmatic fool!"
603 WHILE INKEY$ = "": WEND
605 CLS
610 GOTO 35
COLOR 10
1000 PRINT "Congratulations you are right"
1001 PRINT "It took you"; z; " attempts to correctly solve this problem of great mind stress!"
1002 score = 1000 / z
1003 PRINT "Your score is "; score
1005 PRINT "Hey hotshot!, try to beat this score just one more time??? (Y, N)"
1010 INPUT choice$
1015 IF choice$ = "y" THEN GOTO 20
1020 IF choice$ = "Y" THEN GOTO 20
1025 IF choice$ = "n" THEN GOTO 1999
1030 IF choice$ = "N" THEN GOTO 1999
1999 PLAY "aaaba15aaa"
COLOR 6
2000 PRINT "Thanks for playing (X) Tyrant Software's SNAZZY little game!"
SLEEP 2
CLS
LOCATE 10, 15
COLOR 10
PRINT "Credits:"
LOCATE 12, 15
PRINT "Game and Art and Music design by:  Michael Hughes"
LOCATE 14, 15
PRINT "Other people affiliated with the making of this game:"
LOCATE 16, 15
PRINT "Jeffrey Cox and Travis Larson"
SLEEP 2
CLS
LOCATE 15, 15
COLOR 5
PRINT "This version is not expected to change"
LOCATE 17, 15
PRINT "This was the first program by Michael Hughes to help him get into Tyrant (X) Software."
2001 END


1 CLS
PRINT "# or +   Turns preceding note into a sharp."
PRINT "-        Turns preceding note into a flat."
PRINT ".        Plays the preceding note 3/2 as long as specified."
PRINT "remember - notes are A-G"
INPUT "what would you like to play"; p$
PLAY p$
GOTO 1


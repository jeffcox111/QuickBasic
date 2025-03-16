DECLARE SUB ShowScore (score%)
DECLARE FUNCTION PlayGame% ()
DECLARE SUB EraseTarget (target.position%)
DECLARE SUB ShootArrow (a%, target.position%)
DECLARE FUNCTION ShowTarget% ()
DECLARE SUB DrawScreen ()

RANDOMIZE TIMER        'seed random number generater.
CALL DrawScreen        'draw the playing screen.
score% = PlayGame      'Play the game.
CALL ShowScore(score%) 'Show the final score.

SUB DrawScreen
   CLS
   FOR x% = 1 TO 10
     LOCATE x% * 2 + 2, 1
     COLOR 9
     PRINT "-------------------------------"
     IF x% < 10 THEN
       LOCATE x% * 2 + 3, 1
       COLOR 2
       PRINT x%; ">>-->"
     END IF
   NEXT x%
END SUB

SUB EraseTarget (target.position%)
   LOCATE target.position% * 2 + 3, 60
   PRINT "  "
END SUB

FUNCTION PlayGame%
  score% = 0
  FOR x% = 1 TO 25
    target.position% = ShowTarget%
    start.time& = TIMER
    shot.fired% = 0

    DO
      a% = VAL(INKEY$)
      IF a% >= 1 AND a% <= 9 THEN
        CALL ShootArrow(a%, target.position%)
        shot.fired% = 1
      END IF
    LOOP UNTIL (shot.fired%) OR (TIMER > start.time& + 1)

    IF a% = target.position% THEN
      BEEP
      score% = score% + 1
    END IF

    CALL EraseTarget(target.position%)
  NEXT x%
  PlayGame% = score%
END FUNCTION

SUB ShootArrow (a%, target.position%)
  FOR x% = 4 TO 60
    LOCATE a% * 2 + 3, x%
    COLOR 2
    PRINT ">>-->"
    FOR delay = 1 TO 50: NEXT delay
    LOCATE a% * 2 + 3, x%
    PRINT "   "
  NEXT x%
  LOCATE a% * 2 + 3, 4
  COLOR 2
  PRINT ">>-->"
END SUB

SUB ShowScore (score%)
  LOCATE 20, 60
  PRINT "---------------------"
  LOCATE 21, 60
  COLOR 3
  PRINT "  Your score is"; score%
  LOCATE 22, 60
  PRINT "---------------------"
END SUB

FUNCTION ShowTarget%
  p% = INT(9 * RND + 1)
  LOCATE p% * 2 + 3, 60
  COLOR 4
  PRINT "x"
  ShowTarget% = p%
END FUNCTION


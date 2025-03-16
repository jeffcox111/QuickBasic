DECLARE FUNCTION getinput$ ()
CLS
response$ = getinput$
LOCATE 2, 1
PRINT "you typed '"; response$; "'"

FUNCTION getinput$
  LOCATE 20, 1
  PRINT "  please enter text below"
  PRINT "--------------------------------"
  PRINT "> "
  PRINT "--------------------------------"
  LOCATE 22, 3
  LINE INPUT s$
  getinput$ = s$

END FUNCTION


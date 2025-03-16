
    SCREEN 12
1 DO
    CLS
    RANDOMIZE TIMER
    x% = INT(RND * 15)
   
    IF x% > 0 THEN
      COLOR x%
    ELSE
      GOTO 1
    END IF
    FOR i% = 1 TO 10 STEP 1
        WINDOW (-160 / i%, -100 / i%)-(160 / i%, 100 / i%)
        CIRCLE (0, 0), 10
    FOR delay% = 1 TO 5000: NEXT delay%
    NEXT i%
    SLEEP 1
LOOP WHILE INKEY$ = ""


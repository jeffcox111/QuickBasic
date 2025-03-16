'This is a demonstration program of using the PEEK location &H417 to get the
'status of a key such as ALT, CTRL, LEFT or RIGHT SHIFT, etc.

   
   CLS : COLOR 15, 0
   DO                                        'start a loop
      DEF SEG = &H40: POKE &H1A, PEEK(&H1C)  'empty keyboard buffer
      DEF SEG = 0                            'set to keyboard's segment
      KeyState% = PEEK(&H417)                'get status of keys
      IF KeyState% AND 1 THEN
         PRINT : PRINT "You pressed the Right Shift"
      ELSEIF KeyState% AND 2 THEN
         PRINT : PRINT "You pressed the Left Shift"
      ELSEIF KeyState% AND 4 THEN
         PRINT : PRINT "You pressed Control (CTRL)"
      ELSEIF KeyState% AND 8 THEN
         PRINT : PRINT "You pressed ALT"
      ELSEIF KeyState% AND 16 THEN
         PRINT : PRINT "Either you pressed Scroll Lock, or it was already on"
      ELSEIF KeyState% AND 32 THEN
         PRINT : PRINT "Either you pressed Num Lock, or it was already on"
      ELSEIF KeyState% AND 64 THEN
         PRINT : PRINT "Either you pressed Caps Lock, or it was already on"
      ELSEIF KeyState% AND 128 THEN
         PRINT : PRINT "Either you pressed Insert, or Insert mode was already active"
      END IF
   LOOP UNTIL INKEY$ = CHR$(27)

   'Do NOT remove the DEF SEG = 0 command, or this routine WILL NOT work

      'KeyState%          AND          Key that was pressed
      '====================================================
      'KeyState%          AND 1        Right Shift key
      'KeyState%          AND 2        Left Shift key
      'KeyState%          AND 4        Either CTRL key
      'KeyState%          AND 8        Either ALT key
      'KeyState%          AND 16       Scroll Lock
      'KeyState%          AND 32       Num Lock
      'KeyState%          AND 64       Caps Lock
      'KeyState%          AND 128      Insert


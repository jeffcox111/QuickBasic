DECLARE SUB userinfo ()
DECLARE SUB setmdemoption ()
DECLARE SUB opencom ()
DECLARE FUNCTION menu% ()
DECLARE SUB waitforcall ()
DECLARE SUB callbbs ()
DECLARE SUB endprog ()
DECLARE SUB connect ()
DECLARE SUB otherat ()
CLS
COLOR 7
DO
  item% = menu%
  SELECT CASE item%
    CASE 1: waitforcall
    CASE 2: callbbs
    CASE 3: setmdemoption
    CASE 4: endprog
    CASE 5: otherat
  END SELECT
LOOP UNTIL item% = 4
SYSTEM

SUB callbbs
  COLOR 3
  PRINT "Type 'none' if you wish to add additional modem commands"
  INPUT "Number to call: ", number$
  IF UCASE$(number$) = "none" THEN connect
  opencom
  PRINT "Adding command pramaters."
  PRINT #1, data$
  PRINT "Done."
  PRINT #1, "ATDT" + number$
  PRINT "Calling " + number$ + "...."
  connect
END SUB

'
SUB connect
  PRINT "This is the modem prompt... Press <Esc> to hang up:"
  PRINT
  DO UNTIL ch$ = CHR$(HALT)
  
    ch$ = INKEY$
    IF ch$ <> "" THEN PRINT #1, ch$;
    IF LOC(1) <> 0 THEN inchar$ = INPUT$(1, #1) ELSE inchar$ = ""
    IF inchar$ = CHR$(8) AND POS(0) <> 1 THEN
      LOCATE , POS(0) - 1
      PRINT " ";
      LOCATE , POS(0) - 1
    ELSEIF inchar$ = CHR$(8) AND POS(0) = 1 AND CSRLIN <> 1 THEN
      LOCATE CSRLIN - 1, 80
      PRINT " ";
      LOCATE , POS(0) - 1
    ELSEIF inchar$ = CHR$(8) THEN
    ELSEIF inchar$ = CHR$(13) THEN
    'ELSEIF inchar$ = CHR$(10) THEN 
    ELSE PRINT inchar$;
    END IF
  LOOP
  CLOSE #1   'close the file once done
END SUB

SUB endprog
  COLOR 7
  PRINT "Thank you for using E.T.L.B.B.S."
END SUB

'
FUNCTION menu%
  DO
    CLS
    LOCATE 10, 28
    COLOR 4
    PRINT "---->E.T.L.B.B.S Menu<----"
    LOCATE 11, 28
    PRINT "|   1. Callback Verifier |"
    LOCATE 12, 28
    PRINT "|   2. Call E.T.L.B.B.S  | "
    LOCATE 13, 28
    PRINT "|   3. Set Modem options |"
    LOCATE 14, 28
    PRINT "|   4. Exit Program      | "
    LOCATE 15, 28
    PRINT "|   5. Other modem opt.  | "
    LOCATE 16, 28
    PRINT "------------><------------"
    LOCATE 17, 28
    PRINT "       Choose One: ";
                                   
    LOCATE , , 1: ch$ = INPUT$(1)
    PRINT : PRINT
    LOOP UNTIL VAL(ch$) >= 1 AND VAL(ch$) <= 5
  menu% = VAL(ch$)
END FUNCTION

'
SUB opencom
  PRINT "Retrieving COM port data.  Please hold."
  OPEN "etlbbs.CFG" FOR INPUT AS #2
  INPUT #2, comport$
  CLOSE #2
  OPEN comport$ + ",N,8,1,RB2048,TB2048" FOR RANDOM AS #1
END SUB

SUB otherat
CLS
   COLOR 15
   PRINT "              Choose other modem command from here."
   PRINT "              All codes must be reset on each use."
   PRINT
   PRINT "---Command-------What it does-------------------------------------------"
   PRINT
   PRINT "     ATA/        REPEAT COMMAND"
   PRINT "     ATB/B0      SELECT CCITT V.22 IN 1200 BPS"
   PRINT "     ATB1        SELECT BELL 212A"
   PRINT "     ATE         DISABLE ECHO"
   PRINT "     ATE1        ENABLE ECHO"
   PRINT "     ATI/I0      IDENTIFY"
   PRINT "     ATI1        DISPLAY 000"
   PRINT "     ATI2        DISPLAY OK"
   PRINT "     ATI3        DISPLAY MESSAGE PROGRAM ROM"
   PRINT "     ATL/L0      LOW VOLUME"
   PRINT "     ATL1        LOW VOLUME"
   PRINT "     ATL2        MEDIUM VOLUME"
   PRINT "     ATL3        MAXIMUM SPEAKER VOLUME"
   PRINT "     ATM/M0      DISABLE SPEAKER"
   PRINT "     ATM1        SPEAKER ON UNTIL CARRIER"
   PRINT "     ATM2        SPEAKER ALWAYS ON"
INPUT "<MORE>"; Z
   PRINT "     ATM3        DISABLE SPEAKER WHEN DIALING OR CARRIER"
   PRINT "     ATO         GO ON LINE"
   PRINT "     ATO1        RETRAIN (2400 BPS MODE ONLY)"
   PRINT "     ATQ/Q0      ENABLE RESULT CODES"
   PRINT "     ATQ1        DISABLE RESULT CODES"
   PRINT "     ATSn=X      S REGISTER WRITE (n = VALID S REG, X = ALLOWED VALUE SEE      "
   PRINT "                 &F COMMAND)"
   PRINT "     ATSn?       READ SPECIFIED S REGISTER (n = ANY VALID S REGISTER)"
   PRINT "     ATV0        SELECT DIGIT RESULT CODE"
   PRINT "     ATV1        SELECT WORD RESULT CODE"
   PRINT "     ATX2        DETECT DIAL TONE, DISPLAY connect 1200 / 2400 "
   PRINT "     ATX3        DETECT BUSY TONE, DISPLAY connect 1200 / 2400"
   PRINT "     ATX4        DIAL AND BUSY TONE DETECT DISPLAY connect 1200 / 2400"
   PRINT "     ATY0        DISABLE LONG SPACE DISCONNECT"
   PRINT "     ATY1        ENABLE LONG SPACE DISCONNECT"
   PRINT "     ATZ         SOFTWARE RESET"
   PRINT "     AT&C0       DCD ALWAYS ON"
   PRINT "     AT&C1       DCD FOLLOWS REMOTE CARRIER STATUS"
   PRINT "     AT&D0       IGNORE DTR"
   PRINT "     AT&D1       GO TO COMMAND WHEN DTR ON TO OFF"
   PRINT "     AT&D2       HANGUP AND GO TO COMMAND WHEN DTR ON TO OFF"
   PRINT "     AT&D3       POWER UP RESET WHEN DTR ON TO OFF"
   PRINT "     AT&F        FETCH FACTORY CONFIGURATION for S REGESTERS"
INPUT "<MORE>"; Z
   PRINT "     AT&G0       NO GUARD TONE"
   PRINT "     AT&G1       550 HZ GUARD TONE"
   PRINT "     AT&G2       1800 HZ GUARD TONE"
   PRINT "     AT&J0       SELECT RJ-11/RJ-41S/RJ-45S"
   PRINT "     AT&J1       SELECT RJ-12/RJ-13"
   PRINT "     AT&M0       SELECT ASYNCHRONOUS MODE"
   PRINT "     AT&P0       MAKE BREAK RATIO FOR US (40/60)"
   PRINT "     AT&P1       MAKE BREAK RATIO FOR FOREIGN STANDARD (33/66)"
   PRINT "     AT&R0       CTS TRACKS RTS"
   PRINT "     AT&R1       CTS ON WHEN MODEM READY IN DATA MODE"
   PRINT "     AT&S0       DSR ALWAYS ON"
   PRINT "     AT&S1       DSR FOLLOWS RE232 SPECIFICATION"
   PRINT "     AT&T0       STOP TEST"
   PRINT "     AT&T1       LOCAL ALB TEST"
   PRINT "     AT&T3       LOCAL DLB"
   PRINT "     AT&T        ENABLE DLB REQUEST"
   PRINT "     AT&T5       DISABLE DLB REQUEST"
   PRINT "     AT&T6       REMOTE DLB"
   PRINT "     AT&T7       REMOTE DLB AND SELF TEST"
   PRINT "     AT&T8       LOCAL ALB AND SELF TEST"
   PRINT "     AT&V        VIEW ACTIVE PROFILE"
   PRINT
   PRINT
PRINT
PRINT "Use your command at the dial area"
PRINT "type AT+the command you wish to use"

END SUB

SUB setmdemoption
   COLOR 15
   INPUT "COM port the modem is on(1,2,3,4): ", portno$
   INPUT "What is your modem speed: ", speed$
   PRINT "Is the information above correct?";
   ch$ = INPUT$(1)
IF ch$ = "Y" OR ch$ = "y" THEN
    PRINT "yes"
    comport$ = "COM" + portno$ + ":" + speed$
    OPEN "etlbbs.CFG" FOR OUTPUT AS #2
    PRINT #2, comport$
    CLOSE #2
    PRINT "Settings saved."
  ELSE
 PRINT "No"
    PRINT "Resetting the the options"
  END IF
  PRINT
END SUB

'
SUB waitforcall
  COLOR 1
  PRINT "Waiting for callback verifier"
  opencom
  PRINT #1, "ATS0=1"
  connect
  END SUB


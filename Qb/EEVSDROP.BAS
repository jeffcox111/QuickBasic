SCREEN 12
COLOR 7
CLS
COM(1) ON
OPEN "COM1:1200,N,8,1,CD0,CS0,DS0,OP0,RS,TB2048,RB2048" FOR RANDOM AS #1
PAINT (1, 1), 1
INPUT "WHAT VOLOME DO YOU WANT (0 LOWEST 3 LOUDEST)"; N
PRINT #1, "ATM2H1L"; N
CLS
PAINT (1, 1), 1
PRINT "You are now spying!!!"
WHILE INKEY$ = "": SLEEP: WEND
PRINT "You have just hung up the line."
SYSTEM
END



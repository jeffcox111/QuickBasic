' Completion Date: June 7, 1995
'
'         MM    MM      A      RRRRR   K    K  ' '   SSSSS
'         M M  M M     A A     R    R  K   K    '   S
'         M  MM  M    A   A    RRRRR   KKKK          SSSSS
'         M      M   A AAA A   R r     K K              SS
'         M      M  A       A  R   R   K   K        SSSS
'
'
'           GGGGGG      A      MM   MM  EEEEE   SSSSS
'          G           A A     M M M M  E      S   
'          G   GGG    A   A    M  M  M  EEEEE   SSSSS
'          G     G   A AAA A   M     M  E          SS
'           GGGGG   A       A  M     M  EEEEE  SSSS 
'                                   
'                                  
'         IIIII  N    N   CCCC     
'           I    NN   N  C         
'           I    N N  N  C         
'           I    N  N N  C      . .  
'         IIIII  N   N    CCCC  . .
'
'                             ì Mark's Games Inc.
'
'                               Codemaster
'
'
'                                            * E-Mail me with any ideas for
'         America Online: MarkG13              future programs.
'         Internet: MarkG13@aol.com
'
'         Other Programs by ì Mark's Games Inc. availiable on AOL:
'          Arcade 6.5
'          Christmas Entertainment Pack
'          Qtoys!                                     * There are many more
'          Qbasic Phone                                 programs in progress
'          Mark's Code Maker & Breaker
'
'
'
'
'


CLS
COLOR 9
PRINT "ì Mark's Games Inc."
SOUND 1000, .5
SOUND 2000, .5
SOUND 3000, .5
SOUND 4000, .5
SOUND 5000, .5
SOUND 6000, .5
SOUND 7000, .5
SOUND 8000, .5
SOUND 1000, .5
SOUND 2000, .5
SOUND 3000, .5
SOUND 4000, .5
SOUND 5000, .5
SOUND 6000, .5
SOUND 7000, .5
SOUND 8000, .5
SOUND 1000, .5
SOUND 2000, .5
SOUND 3000, .5
SOUND 4000, .5
SOUND 5000, .5
SOUND 6000, .5
SOUND 7000, .5
SOUND 8000, .5

LOCATE 8, 30
COLOR 4
PRINT "Codemaster"
LOCATE 15, 30
COLOR 1
PRINT "Codemaster is fully compatible with Mark's Code Maker and Breaker."
PRINT "This is a much easier to use program than Mark's Code Maker and Breaker"
PRINT "If you have any problems with this program or you have any comments,"
PRINT "E-Mail Me. My America Online address is: MarkG13, My internet address"
PRINT "is MarkG13@aol.com."
FOR cm = 1 TO 10999
NEXT cm
CLS
LOCATE 10, 1
PRINT "                    Commands to Use at the Main Screen:"
PRINT "                               Encode"
PRINT "                               Decode"
PRINT "                               Help"
PRINT "                               Quit"
FOR c = 1 TO 9000
NEXT c
CLS

CodeMaster:
CLEAR
ON ERROR GOTO NoPrint:

VIEW PRINT 1 TO 25
CLS

PRINT
COLOR 1
PRINT "                              ì Mark's Games Inc."
LOCATE 10, 1
COLOR 4
PRINT "                                \           /"
PRINT "                                 Code Master "
PRINT "                                /           \"
LOCATE 24, 1
COLOR 15
PRINT DATE$
LOCATE 24, 70
PRINT TIME$
In:
LOCATE 18, 40
PRINT "                 "
LOCATE 18, 32
COLOR 2
INPUT "Encode or Decode"; code$
code$ = LCASE$(code$)
IF code$ = "encode" THEN GOTO Encode1:
IF code$ = "decode" THEN GOTO decode1:
IF code$ = "help" THEN GOTO Help:
IF code$ = "quit" THEN GOTO Quit:
GOTO In:

Encode1:
CLS
COLOR 1
PRINT "                                 Encode"
COLOR 4
PRINT ""
PRINT " Type in the message you would like to be encoded ONE LETTER AT A TIME"
PRINT " When you are done then type done in lowercase letters. The Message will "
PRINT " be printed out on your printer."
PRINT
Start:
COLOR 1
encode2:

INPUT a$
IF a$ = "done" THEN GOTO CodeMaster:




a$ = UCASE$(a$)
b$ = UCASE$(b$)
c$ = UCASE$(c$)
d$ = UCASE$(d$)
e$ = UCASE$(e$)
f$ = UCASE$(f$)
g$ = UCASE$(g$)
h$ = UCASE$(h$)
i$ = UCASE$(i$)
j$ = UCASE$(j$)
k$ = UCASE$(k$)
l$ = UCASE$(l$)
m$ = UCASE$(m$)
n$ = UCASE$(n$)



IF a$ = "" THEN a$ = "  "
IF a$ = "A" THEN a$ = "29"
IF a$ = "B" THEN a$ = "2"
IF a$ = "C" THEN a$ = "466"
IF a$ = "D" THEN a$ = "4"
IF a$ = "E" THEN a$ = "66"
IF a$ = "F" THEN a$ = "6"
IF a$ = "G" THEN a$ = "90"
IF a$ = "H" THEN a$ = "664"
IF a$ = "I" THEN a$ = "9"
IF a$ = "J" THEN a$ = "290"
IF a$ = "K" THEN a$ = "2929"
IF a$ = "L" THEN a$ = "292"
IF a$ = "M" THEN a$ = "29466"
IF a$ = "N" THEN a$ = "294"
IF a$ = "O" THEN a$ = "2966"
IF a$ = "P" THEN a$ = "296"
IF a$ = "Q" THEN a$ = "2990"
IF a$ = "R" THEN a$ = "29664"
IF a$ = "S" THEN a$ = "299"
IF a$ = "T" THEN a$ = "20"
IF a$ = "U" THEN a$ = "229"
IF a$ = "V" THEN a$ = "22"
IF a$ = "W" THEN a$ = "2466"
IF a$ = "X" THEN a$ = "24"
IF a$ = "Y" THEN a$ = "266"
IF a$ = "Z" THEN a$ = "26"
LPRINT a$
GOTO Start:

decode1:
CLS
COLOR 4
PRINT "                                 Decode"
COLOR 9
PRINT " Type in the encoded message you have one number at a time. For example"
PRINT " if the encoded letter was 29 then you would type 29 and press enter."
PRINT " The message will be printed out on your printer. When you are done"
PRINT " type done IN LOWERCASE LETTERS to return to the Main Screen."
PRINT
COLOR 9

decode2:

INPUT a$
IF a$ = "done" THEN GOTO CodeMaster

IF a$ = "" THEN a$ = "  "
IF a$ = "29" THEN a$ = "A"
IF a$ = "2" THEN a$ = "B"
IF a$ = "466" THEN a$ = "C"
IF a$ = "4" THEN a$ = "D"
IF a$ = "66" THEN a$ = "E"
IF a$ = "6" THEN a$ = "F"
IF a$ = "90" THEN a$ = "G"
IF a$ = "664" THEN a$ = "H"
IF a$ = "9" THEN a$ = "I"
IF a$ = "290" THEN a$ = "J"
IF a$ = "2929" THEN a$ = "K"
IF a$ = "292" THEN a$ = "L"
IF a$ = "29466" THEN a$ = "M"
IF a$ = "294" THEN a$ = "N"
IF a$ = "2966" THEN a$ = "O"
IF a$ = "296" THEN a$ = "P"
IF a$ = "2990" THEN a$ = "Q"
IF a$ = "29664" THEN a$ = "R"
IF a$ = "299" THEN a$ = "S"
IF a$ = "20" THEN a$ = "T"
IF a$ = "229" THEN a$ = "U"
IF a$ = "22" THEN a$ = "V"
IF a$ = "2466" THEN a$ = "W"
IF a$ = "24" THEN a$ = "X"
IF a$ = "266" THEN a$ = "Y"
IF a$ = "26" THEN a$ = "Z"
LPRINT a$
GOTO decode2:

NoPrint:
CLS
BEEP
BEEP
BEEP
BEEP
BEEP
BEEP
COLOR 4
PRINT "                     ERROR!!"
PRINT
PRINT "An error has occured while you were using Code Master."
PRINT "The error was probably a printer error. To fix this error,"
PRINT "turn on your printer, check to see if there is paper in the printer,"
PRINT "if the printer is currently turned on, turn it off and then back on."
PRINT "If all of these solutions do not work, then E-Mail me. If you E-Mail"
PRINT "me, then include the number you see below in your message. My E-Mail"
PRINT "address is: MarkG13."
BEEP
BEEP
PRINT
COLOR 1
PRINT "Error Code #:"; ERR
PRINT
COLOR 4
PRINT "Press the Space Bar to Return to the Main Menu"
BEEP
DO: LOOP UNTIL INKEY$ = " "
BEEP
BEEP
GOTO CodeMaster:

Help:
CLS
COLOR 5
PRINT "                                 Help!"
PRINT "Code Master is a very simple program to operate. Follow the directions"
PRINT "that are displayed on your screen when you choose to encode or decode"
PRINT "If you have any more questions, then E-Mail me. America Online: MarkG13"
PRINT "Internet: MarkG13@aol.com"
SLEEP 6
GOTO CodeMaster:

Quit:
CLS
COLOR 1
PRINT "Thank You For using this program. I hope you EnJoYeD it! "
LOCATE 10, 1
PRINT "Questions? Comments? E-Mail Me. My AOL address is MarkG13"
PRINT "Internet Address: MarkG13@aol.com"
LOCATE 20, 1
COLOR 4
PRINT "ì Mark's Games Inc."


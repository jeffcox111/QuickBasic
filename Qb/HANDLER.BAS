'                *******ErrorHANDLER Version 1.0**********
'                        Created By Matt Rooney
' if you like it send 5.00 and you will get a free copy of Version 2.0


'IMPORTANT! this program *MUST* used as a SUBPROGRAM called ErrorHANDLER,
'or it will not work right

'IMPORTANT! you *MUST* put the block of commands below at the beginning
'of your program

'beginning:
'DECLARE SUB ErrorHANDLER ()
'ON ERROR GOTO ErrorHANDLER
'(you can put whatever you want here like CALLS or PRINTS etc.)
'errorhandler:
'CALL ErrorHANDLER

'For more information see the ErrorHANDLER documentation



SCREEN 9
COLOR 8, 63
LINE (100, 97)-(540, 200), 15, BF
LINE (100, 97)-(540, 200), 8, B
LINE (100, 112)-(540, 112), 8
LINE (102, 99)-(112, 109), 8, B
LINE (115, 99)-(537, 99), 8
LINE (115, 102)-(537, 102), 8
LINE (115, 105)-(537, 105), 8
LINE (115, 108)-(537, 108), 8
LOCATE 8, 30: PRINT " ErrorHANDLER v1.0 "

LOCATE 11, 35: PRINT "error :"; ERR
LOCATE 12, 31: PRINT "Press ESC to Continue"
LOCATE 10, 30: IF ERR = 1 THEN PRINT "Next Without For"
LOCATE 10, 30: IF ERR = 2 THEN PRINT "Syntax Error"
LOCATE 10, 30: IF ERR = 3 THEN PRINT "Return without gosub"
LOCATE 10, 30: IF ERR = 4 THEN PRINT "Out of data"
LOCATE 10, 30: IF ERR = 5 THEN PRINT "Illegal Function Call"
LOCATE 10, 30: IF ERR = 6 THEN PRINT "Overflow"
LOCATE 10, 30: IF ERR = 7 THEN PRINT "out of memory"
LOCATE 10, 30: IF ERR = 8 THEN PRINT "label not defined"
LOCATE 10, 30: IF ERR = 9 THEN PRINT "Subscript out of range"
LOCATE 10, 30: IF ERR = 10 THEN PRINT "Duplicate definition"
LOCATE 10, 30: IF ERR = 11 THEN PRINT "Division by zero"
LOCATE 10, 30: IF ERR = 12 THEN PRINT "Illegal in direct mode"
LOCATE 10, 30: IF ERR = 13 THEN PRINT "Type mismatch"
LOCATE 10, 30: IF ERR = 14 THEN PRINT "Out of string space"

LOCATE 10, 30: IF ERR = 16 THEN PRINT "String formula too complex"
LOCATE 10, 30: IF ERR = 17 THEN PRINT "Cannot continue"
LOCATE 10, 30: IF ERR = 18 THEN PRINT "Function not defined"
LOCATE 10, 30: IF ERR = 19 THEN PRINT "No Resume"
LOCATE 10, 30: IF ERR = 20 THEN PRINT "Resume without error"

LOCATE 10, 30: IF ERR = 24 THEN PRINT "Device timeout"
LOCATE 10, 30: IF ERR = 25 THEN PRINT "Device fault"
LOCATE 10, 30: IF ERR = 26 THEN PRINT "For without next"
LOCATE 10, 30: IF ERR = 27 THEN PRINT "Out of paper"
LOCATE 10, 30: IF ERR = 29 THEN PRINT "While without wend"

LOCATE 10, 30: IF ERR = 30 THEN PRINT "Wend wihtout while"
LOCATE 10, 30: IF ERR = 33 THEN PRINT "Duplicate label"
LOCATE 10, 30: IF ERR = 35 THEN PRINT "Subprogram not defined"
LOCATE 10, 30: IF ERR = 37 THEN PRINT "Argument-count Mismatch"
LOCATE 10, 30: IF ERR = 38 THEN PRINT "Array not defined"

LOCATE 10, 30: IF ERR = 40 THEN PRINT "Variable Required"
LOCATE 10, 30: IF ERR = 50 THEN PRINT "Field overflow"
LOCATE 10, 30: IF ERR = 51 THEN PRINT "Internal Error"
LOCATE 10, 30: IF ERR = 52 THEN PRINT "Bad file name or number"
LOCATE 10, 30: IF ERR = 53 THEN PRINT "File not found"

LOCATE 10, 30: IF ERR = 54 THEN PRINT "Bad file mode"
LOCATE 10, 30: IF ERR = 55 THEN PRINT "File Already open"
LOCATE 10, 30: IF ERR = 56 THEN PRINT "Field statement active"
LOCATE 10, 30: IF ERR = 57 THEN PRINT "Device I/O error"
LOCATE 10, 30: IF ERR = 58 THEN PRINT "File already exists"

LOCATE 10, 30: IF ERR = 59 THEN PRINT "Bad record length"
LOCATE 10, 30: IF ERR = 61 THEN PRINT "Disk Full"
LOCATE 10, 30: IF ERR = 62 THEN PRINT "Input past end of file"
LOCATE 10, 30: IF ERR = 63 THEN PRINT "Bad record number"
LOCATE 10, 30: IF ERR = 64 THEN PRINT "Bad file name"

LOCATE 10, 30: IF ERR = 67 THEN PRINT "too many files"
LOCATE 10, 30: IF ERR = 68 THEN PRINT "Device Unavailible"
LOCATE 10, 30: IF ERR = 69 THEN PRINT "Communication buffer overflow"
LOCATE 10, 30: IF ERR = 70 THEN PRINT "Permission Denied"
LOCATE 10, 30: IF ERR = 71 THEN PRINT "Disk not ready"

LOCATE 10, 30: IF ERR = 72 THEN PRINT "Disk Media Error"
LOCATE 10, 30: IF ERR = 73 THEN PRINT "Feature Unavailible"
LOCATE 10, 30: IF ERR = 74 THEN PRINT "Rename Across disks"
LOCATE 10, 30: IF ERR = 75 THEN PRINT "Path/file access error"
LOCATE 10, 30: IF ERR = 76 THEN PRINT "path file name"

DO
LOOP UNTIL INKEY$ = CHR$(27)


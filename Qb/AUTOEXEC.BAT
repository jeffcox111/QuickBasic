@echo off
goto %config%

:OUT
echo .
echo .
echo Thanks for choosing TYRANT SOFTWARE
echo .
echo .
goto QUIT

:Cfg000
SET SOUND=C:\SC400
SET BLASTER=A220 I5 D1 T6
SET GALAXY=A220 I5 D1 K10 P530 T6
LH /L:1,27952 C:\DOS\MSCDEX.EXE /D:MSCD000 
LH /L:0;1,45488 /S C:\DOS\SMARTDRV.EXE /Q 1025 128
@ECHO OFF
PATH C:\DOS
PROMPT $p$g
SET TEMP=C:\DOS
cd\
C:
cd\
cls

:Cfg001
PATH C:\DOS;C:\QB;C:\QB\GUI
PROMPT $P$G
LH MOUSE
cd\
C:
cd\
cd jf2
jf2

:Cfg002
PATH C:\DOS;C:\QB;C:\QB\GUI
PROMPT $p$g
SET TEMP=C:\DOS
LH mouse
cd\
C:
cd\
cd qb\gui
qb /l buttons

:QUIT

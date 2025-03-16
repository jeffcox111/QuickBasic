DECLARE SUB loadpal (pal$)
DECLARE SUB loadgfx (pic$)
SCREEN 13
loadpal "c:\qb\terra\tyrant.pal"
loadgfx "c:\qb\terra\tyrant.gfx"

SUB loadgfx (pic$)
DEF SEG = &HA000
BLOAD pic$, 0
DEF SEG
END SUB

SUB loadpal (pal$)
OPEN pal$ FOR INPUT AS #1
FOR x = 0 TO 255
INPUT #1, r, g, b
OUT &H3C8, x
OUT &H3C9, r
OUT &H3C9, g
OUT &H3C9, b
NEXT x
CLOSE #1
END SUB


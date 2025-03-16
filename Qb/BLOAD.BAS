DIM Cube(1 TO 2344)
' Set the screen mode. The mode should be the same as the
' mode used to create the original drawing.
SCREEN 12
' Set segment to the array Cube's segment and load
' the graphic file into Cube.
DEF SEG = VARSEG(Cube(1))
BLOAD "tyrant.x", VARPTR(Cube(1))
DEF SEG               ' Restore default BASIC segment.
' Put the drawing on the screen.
PUT (320, 240), Cube


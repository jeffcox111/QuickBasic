DIM Cube(1 TO 2344)
SCREEN 12
DEF SEG = VARSEG(Cube(1))
BLOAD "square1.bvr", VARPTR(Cube(1))
DEF SEG               ' Restore default BASIC segment.
FOR x = 1 TO 380 STEP 20
PUT (1, x), Cube
NEXT x
DEF SEG = VARSEG(Cube(1))
BLOAD "square2.bvr", VARPTR(Cube(1))
FOR y = 1 TO 380 STEP 20
PUT (530, y), Cube
NEXT y
DEF SEG
DEF SEG = VARSEG(Cube(1))
BLOAD "square2.bvr", VARPTR(Cube(1))
FOR w = 1 TO 540 STEP 20
PUT (w, 360), Cube
NEXT w
DEF SEG
DEF SEG = VARSEG(Cube(1))
BLOAD "square1.bvr", VARPTR(Cube(1))
FOR z = 1 TO 540 STEP 20
PUT (z, 1), Cube
NEXT z
DEF SEG


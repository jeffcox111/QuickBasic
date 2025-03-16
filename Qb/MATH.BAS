1 CLS
COLOR 4
PRINT "MATH  ver 2.3"
COLOR 3
PRINT " by Jeffrey Cox"
COLOR 1
PRINT "-------------------------------------------------"
COLOR 5
PRINT "1. volume of a cone"
PRINT "2. volume of a sphere"
PRINT "3. volume of a pyramid"
PRINT "4. volume of cylinder"
PRINT "5. volume of prizm"
PRINT "6. vomume of rectangular cube"
PRINT "7. area of circle"
PRINT "8. area of triangle"
PRINT "9. area of rectangular plane"
PRINT "10. glossary"
PRINT "11. exit"
PRINT " "
PRINT " "
INPUT "Your choice is"; choice%

IF choice% = 1 THEN
  CLS
  INPUT "diameter of cone"; d
  INPUT "height of cone"; h
  LET v = 1 / 2 * (3.14 * (1 / 2 * d) ^ 2 * h)
  COLOR 12
  PRINT "the volume of the cone is"; v
  WHILE INKEY$ <> CHR$(13)
  SLEEP
  WEND
  GOTO 1
ELSEIF choice% = 2 THEN
  CLS
  INPUT "height of sphere"; h
  INPUT "diameter of sphere"; d
  LET v = 2 / 3 * (3.14 * (1 / 2 * d) ^ 2 * h)
  COLOR 12
  PRINT "the volume of the sphere is"; v
  WHILE INKEY$ <> CHR$(13)
  SLEEP
  WEND
  GOTO 1
ELSEIF choice% = 3 THEN
  CLS
  INPUT "width of pyramid"; w
  INPUT "length of pyramid"; l
  INPUT "height of pyramid"; h
  LET v = 1 / 3 * l * w * h
  COLOR 12
  PRINT "the volume of the pyramid is"; v
  WHILE INKEY$ <> CHR$(13)
  SLEEP
  WEND
  GOTO 1
ELSEIF choice% = 4 THEN
  CLS
  INPUT "diameter of cylinder"; d
  INPUT "height of cylinder"; h
  LET v = 3.14 * (.5 * d) ^ 2 * h
  COLOR 12
  PRINT "the volume of the cylinder is"; v
  WHILE INKEY$ <> CHR$(13)
  SLEEP
  WEND
  GOTO 1
ELSEIF choice% = 5 THEN
  CLS
  INPUT "height of prizm"; h
  INPUT "width of prizm"; w
  INPUT "lenghth of prizm"; l
  LET v = (.5 * w) * h * l
  COLOR 12
  PRINT "the volume of the prizm is"; v
  WHILE INKEY$ <> CHR$(13)
  SLEEP
  WEND
  GOTO 1
ELSEIF choice% = 6 THEN
  CLS
  INPUT "enter the length"; l
  INPUT "enter the width"; w
  INPUT "enter the height"; h
  LET v = l * w * h
  COLOR 12
  PRINT " the volume is"; v
  WHILE INKEY$ <> CHR$(13)
  SLEEP
  WEND
  GOTO 1
ELSEIF choice% = 7 THEN
  CLS
  INPUT "diameter of circle"; d
  LET a = 3.14 * (.5 * d) ^ 2
  COLOR 12
  PRINT "the area of the circle is"; a
  WHILE INKEY$ <> CHR$(13)
  SLEEP
  WEND
  GOTO 1
ELSEIF choice% = 8 THEN
  CLS
  INPUT "height of triangle"; h
  INPUT "width of triangle"; w
  LET a = .5 * h * w
  COLOR 12
  PRINT "area of the triangle is"; a
  WHILE INKEY$ <> CHR$(13)
  SLEEP
  WEND
  GOTO 1
ELSEIF choice% = 9 THEN
  CLS
  INPUT "height of rectangle"; h
  INPUT "lenght of rectangle"; l
  LET a = l * h
  COLOR 12
  PRINT "the area is"; a
  WHILE INKEY$ <> CHR$(13)
  SLEEP
  WEND
  GOTO 1
ELSEIF choice% = 10 THEN
  CLS
  PRINT "cone -- a tube-like object that comes to a point at one end"
  PRINT "sphere -- a ball shaped object"
  PRINT "pyramid -- a cube with a point at one end"
  PRINT "cylinder -- a tube shaped object"
  PRINT "prizm -- triangular shaped tube"
  PRINT "rectangular cube -- an object with six sides of right angled squares"
  PRINT "circle -- a round shape"
  PRINT "triangle -- a polygon with three sides and points"
  PRINT "rectangular plane -- a polygon"
  PRINT "diameter -- length across a circle"
  PRINT "radius -- half of diameter"
  PRINT "area -- space that a flat plain takes up"
  PRINT "volume -- space that a three dimensional object takes up"
  WHILE INKEY$ <> CHR$(13)
  SLEEP
  WEND
  GOTO 1
ELSEIF choice% = 11 THEN
  COLOR 10
  INPUT "are you sure"; a$
  IF a$ = "y" THEN
    PRINT "Goodbye!!!"
    END
  ELSE GOTO 1
  END IF
ELSE
  COLOR 2
  PRINT "Invalid selection!!!"
  SLEEP 1
  GOTO 1
END IF




  



  

  







'Everything must be integers or the program will crash.
DEFINT A-Z

DECLARE SUB pause (ticks AS INTEGER)

'To keep from getting confused the best way to give buttons an id number is
'to use values in these ranges.
'Boxes:0-99
'Buttons:100-199
'Check Boxes:200-299
'Radio Buttons:300-399
'Text Boxes:400-499
'Edit Boxes:500-599
'Scroll Bars:600-699
'Picture Buttons:700-799
'
'You will never run out of numbers because there can only be 30 of one type
'of object on the screen at a time.

'$INCLUDE: 'button.bi'

RANDOMIZE TIMER

SCREEN 12
init "", 1  'Initialize everything. Background is 20 red,20 green and 20 blue.
key$ = moused$(2, 0, 0, 0)
pause 36 'Wait 36 ticks (about 2 seconds)
			'1 tick is 1/18.2 of a second.
CLS
FOR x = 1 TO 15
COLOR x
PRINT x
NEXT x
END
DO                                         'Main loop.
	key$ = moused(3, bx, x, y)          'Get cursor info, bx=button status
														'x,y=(x,y) of mouse

	IF LEN(key$) = 1 THEN editchange key$  'and put into edit box.

	IF bx = 0 AND bd = 1 THEN bd = 0  'Make sure the button doesn't flip states.
	IF (bx AND 1) AND (bd = 0) THEN
		bd = 1
		id = findAnimate(x, y)   'See if a button was pressed
		k = animate(id)'and if one was animate it.

		IF k THEN
			SELECT CASE id               'Actions for buttons
				CASE 101: EXIT DO                'Exit
															'Move text from edit box to text field
				CASE 102: setText 499, Get.Text(502) + " " + Get.Text(500) + "."
															'If 'Are you here' is checked say 'Hello'
															'Else say 'Where are you?'
				CASE 201: IF get.State(201) THEN setText 401, "Hello." ELSE setText 401, "Where are you?"

				CASE 398: Disable 101      'Disable Quit button
				CASE 399: Enable 101       'Enable Quit button
				CASE 103: dummy$ = moused(3, 0, x, y): dummy$ = moused(4, 0, x, y - 5)'Move mouse up 5
				CASE 104: dummy$ = moused(3, 0, x, y): dummy$ = moused(4, 0, x + 5, y) ' "     "   left 5
				CASE 105: dummy$ = moused(3, 0, x, y): dummy$ = moused(4, 0, x, y + 5) ' "     "   down 5
				CASE 106: dummy$ = moused(3, 0, x, y): dummy$ = moused(4, 0, x - 5, y) ' "     "   right 5
				CASE 107: dummy$ = moused(4, 0, 1 + INT(639 * RND), 1 + INT(479 * RND)) 'Move mouse to random place
				CASE 701: setText 404, "'About' what?"
			END SELECT
		END IF
	END IF
LOOP

key$ = moused$(2, 0, 0, 0)

SUB pause (ticks AS INTEGER)
IF ticks < 1 THEN EXIT SUB
DEF SEG = &H40
ax = PEEK(&H6C)
FOR cx = 1 TO ticks
idle:
	dx = PEEK(&H6C)
	IF ax = dx THEN GOTO idle
	ax = dx
NEXT cx
END SUB


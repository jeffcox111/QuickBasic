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
textbox 20, 455, 600, 20, "", 499

editbox 200, 200, 150, 20, "", 501
editbox 200, 250, 150, 20, "Hello", 502

textbox 20, 20, 200, 14, "What is your name?", 400
editbox 20, 40, 400, 20, "", 500

box 10, 85, 140, 150

button 400, 400, 0, 0, "Bye Bye!!!", 101
Disable 101   'Disable 'Bye Bye' button.

radio.but 350, 430, 0, 0, "Disable", 2, 398, 398  'Buttons to Enable and
radio.but 500, 430, 0, 0, "Enable", 2, 0, 399  'Disable 'Bye Bye' button

button 50, 250, 0, 0, "Transfer Data", 102

check.box 500, 50, 0, 0, "Are you here?", 1, 201

radio.but 50, 100, 0, 0, "Here", 1, 301, 301
radio.but 50, 150, 0, 0, "There", 1, 0, 302
radio.but 50, 200, 0, 0, "Anywhere", 1, 0, 303

textbox 200, 100, 150, 12, "Hello.", 401
textbox 200, 150, 200, 15, "", 402
textbox 100, 350, 200, 20, "", 403
textbox 100, 300, 200, 20, "", 409

scrollbar 100, 400, 200, 28, 60, 120, 1, 75, 403, "%%% Deg.", 601
scrollbar 400, 100, 200, 30, 1, 1000, 5, 500, 402, "%%% in Bar 1", 602
scrollbar 360, 175, 250, 19, 100, 1000, 20, 400, 402, "%%% in Bar 2", 603
scrollbar 360, 210, 59, 20, 1, 1000, 10, 500, 402, "%%% in Bar 3", 604
scrollbar 440, 210, 60, 20, 1, 1000, 10, 500, 402, "%%% in Bar 4", 605
scrollbar 50, 300, 20, 100, 1, 10000, 100, 5000, 0, "%%%", 606

'To make arrows in buttons: make a regular button exept for the name
'put aRRowU,aRRowD,aRRowR,aRRowL to have an arrow in it.
button 400, 290, 30, 30, "aRRowU", 103
button 430, 320, 30, 30, "aRRowL", 104
button 400, 350, 30, 30, "aRRowD", 105
button 370, 320, 30, 30, "aRRowR", 106
button 400, 320, 30, 30, "Rnd", 107

textbox 500, 265, 120, 20, "About?", 404
picbutton 500, 300, 75, 50, "About", 701  'Make picture button using About as the file.

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


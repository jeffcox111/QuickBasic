DECLARE SUB init (n$, doit%)

DECLARE SUB Disable (id%)
DECLARE SUB Enable (id%)

DECLARE SUB box (x%, y%, w%, h%)
DECLARE SUB button (x%, y%, w%, h%, Name$, id%)
DECLARE SUB picbutton (x%, y%, w%, h%, finame$, id%)
DECLARE SUB ScrollBar (x%, y%, w%, h%, low%, hi%, increment%, start%, linkid%, template$, id%)
DECLARE SUB check.box (x%, y%, w%, h%, Name$, start%, id%)
DECLARE SUB radio.but (x%, y%, w%, h%, Name$, group%, stid%, id%)
DECLARE SUB textbox (x%, y%, w%, h%, text$, id%)
DECLARE SUB editbox (x%, y%, w%, h%, text$, id%)
	DECLARE SUB editchange (text$)
	DECLARE SUB editfocus (id%)

DECLARE FUNCTION findAnimate% (x%, y%)
DECLARE FUNCTION animate (B%)
 
DECLARE FUNCTION Get.Text$ (id%)
DECLARE FUNCTION get.State% (id%)

DECLARE SUB set.state (id%, st%)
DECLARE SUB setText (id%, text$)
	DECLARE SUB textfont (a$, x%, y%, w%, h%, C%, bkg%, Vert%)

DECLARE SUB DeleteObject (id%)

DECLARE FUNCTION moused$ (ax%, bx%, cx%, dx%)
DECLARE SUB ChangeMouse (fi$)

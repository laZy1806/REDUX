methodController()
var MOVECALC = curveCalculation(movementCurve, perMovement, 0)
var ANGLECALC = curveCalculation(angleCurve, perAngle, 1)
var SIZECALC = curveCalculation(heightCurve, perSize, 2)

x = RELATIVEX + xTo * MOVECALC
y = RELATIVEY + yTo * MOVECALC

image_angle = ANGLE + ANGLETO * ANGLECALC
WIDTHSTATIC = WIDTH + WIDTHTO * SIZECALC //* forwardOrBack(WIDTHSTATIC, WIDTHTO)
HEIGHTSTATIC = HEIGHT + HEIGHTTO * SIZECALC //* forwardOrBack(HEIGHTSTATIC, HEIGHTTO)

global.Right = right.x
global.Left = left.x
global.Top = top.y
global.Floor = bottom.y


for (var f = 0; f < array_length(buttonList); f++) {
	buttonList[f].STEP()
}
//debug stuff
if keyboard_check(vk_space) {
	var ranx = irandom_range(0, 640)
	//show_debug_message(ranx)
	var rany = irandom_range(0, 480)
	//show_debug_message(rany)
	
	var vwidth = irandom_range(100, 400)
	//show_debug_message(vwidth)
	var vheight = irandom_range(100, 400)
	//show_debug_message(vheight)
	
	var ang = irandom_range(0, 720)
	//show_debug_message(ang)
	show_debug_message(top.SETWIDTH)
	if keyboard_check_pressed(ord("K")) changeDestination(ranx, rany, 1/120, "ease")
	if keyboard_check_pressed(ord("L")) changeSize(vwidth, vheight, 1/80, "ease")
	if keyboard_check_pressed(ord("J")) changeAngle(ang, 1/80, "ease")
}
	
	
	

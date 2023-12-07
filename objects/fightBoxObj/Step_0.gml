#region DEBUGSTUFF
/*
ANGLE += keyboard_check(vk_space)
RELATIVEX += keyboard_check(vk_right) - keyboard_check(vk_left)
RELATIVEY += keyboard_check(vk_down) - keyboard_check(vk_up)
WIDTHTO += keyboard_check(vk_shift) - keyboard_check(vk_enter)
HEIGHT += keyboard_check(vk_shift) - keyboard_check(vk_enter)
*/
/*
if keyboard_check_pressed(vk_space) {
	var ONE = 50
	//show_debug_message(ONE)
	changeSize(ONE, ONE, 1/irandom_range(40, 120), "ease")
}
*/
#endregion
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



/*debug stuff
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
	
	if keyboard_check_pressed(ord("K")) changeDestination(ranx, rany, 1/120, "ease")
	if keyboard_check_pressed(ord("L")) changeSize(vwidth, vheight, 1/80, "ease")
	if keyboard_check_pressed(ord("J")) changeAngle(ang, 1/80, "ease")
		
}



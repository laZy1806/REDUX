methodController()
var MOVECALC = curveCalculation(movementCurve, perMovement, 0)
var ANGLECALC = curveCalculation(angleCurve, perAngle, 1)
var SIZECALC = curveCalculation(heightCurve, perSize, 2)

x = RELATIVEX + xTo * MOVECALC
y = RELATIVEY + yTo * MOVECALC

ANG = 360 - (ANGLE + ANGLETO * ANGLECALC)	//360 - helps fix the angle being negative, rather than positive
WIDTHSTATIC = WIDTH + WIDTHTO * SIZECALC //* forwardOrBack(WIDTHSTATIC, WIDTHTO)
HEIGHTSTATIC = HEIGHT + HEIGHTTO * SIZECALC //* forwardOrBack(HEIGHTSTATIC, HEIGHTTO)

//show_debug_message(string(HEIGHTSTATIC) + " = " + string(HEIGHT) + " + " + string(HEIGHTTO))
image_angle = -ANG
global.Right = right.x
global.Left = left.x 
global.Top = top.y
global.Floor = bottom.y

//show_debug_message(right.image_xscale)


image_xscale = (WIDTHSTATIC - 20)/2
image_yscale = (HEIGHTSTATIC- 10)/2

if variable_instance_exists(id, "_seqInst") {
	_seqInst.activeTracks[0].instanceID.image_xscale = 1000	//allows for dynamic scaling on the custscene :D
}
//mouseDebug()
//debug stuff
if keyboard_check(vk_space) {
	var ranx = irandom_range(100, 640)
	//show_debug_message(ranx)
	var rany = irandom_range(100, 480)
	//show_debug_message(rany)
	
	var vwidth = (floor(irandom_range(100, 400)/10)) * 10 //make it always a multiple of 10
	//show_debug_message(vwidth)
	var vheight = (floor(irandom_range(100, 400)/10)) * 10 //make it always a multiple of 10// no scalling issues with multiples of 10
	//show_debug_message(vheight)
	
	var ang = irandom_range(0, 720)
	//show_debug_message(ang)
	if keyboard_check_pressed(ord("K")) changeDestination(ranx, rany, 1/120, "ease")
	if keyboard_check_pressed(ord("L")) changeSize(vwidth, vheight, 1/80, "ease")
	if keyboard_check_pressed(ord("J")) changeAngle(ang, 1/80, "ease")
}
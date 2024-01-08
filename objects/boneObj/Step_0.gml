stepFunction()
methodController()
//show_debug_message(string(bottomBoneData.x) + "      " + string(bottomBoneData.y))

var MOVE = curveCalculation(movementCurve, perMovement, 0)
var ANGLE = curveCalculation(angleCurve, perAngle, 1)
var HEIGHT = curveCalculation(heightCurve, perHeight, 2)

//show_debug_message(evaluate[0])


heightdiff = endheight - startheight
angledistance = DesAngle - anglestart
originX = startx + disX * MOVE
originY = starty + disY * MOVE

var ANGLECHANGE = anglestart + angledistance * ANGLE
var HEIGHTCHANGE = startheight + heightdiff * HEIGHT

x = originX
y = originY
image_angle = ANGLECHANGE
image_yscale = HEIGHTCHANGE/15
image_xscale = 1

if place_meeting(x, y, soulObj) scrTakeDamage(1, true, 0, true)
//DEBUG STUFF
if keyboard_check(vk_space) {
	//if keyboard_check(ord("K")) anglestart = 45
	//if keyboard_check_pressed(ord("L")) changeSize(vwidth, vheight, 1/80, "ease")
	//if keyboard_check_pressed(ord("J")) changeAngle(ang, 1/80, "ease")
}
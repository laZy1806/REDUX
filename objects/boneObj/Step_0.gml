stepFunction()
methodController()
//show_debug_message(string(bottomBoneData.x) + "      " + string(bottomBoneData.y))

var MOVE = curveCalculation(movementCurve, perMovement, 0)
var ANGLE = curveCalculation(angleCurve, perAngle, 1)
var HEIGHT = curveCalculation(heightCurve, perHeight, 2)

//show_debug_message(evaluate[0])


heightdiff = endheight - startheight
angledistance = DesAngle - anglestart
midBoneScale = startheight/2 + (heightdiff/2 * HEIGHT)

originX = startx + disX * MOVE
originY = starty + disY * MOVE

var ANGLECHANGE = anglestart //+ angledistance * ANGLE
dir_topbone_theta =	90 + ANGLECHANGE 
dir_bottombone_theta = 270 + ANGLECHANGE

var currentAngle = ANGLECHANGE
image_angle = currentAngle
topBoneData.image_angle = currentAngle
bottomBoneData.image_angle = currentAngle + 180

//EXPERIEMENTING WITH MIDDLE ORIGIN, AND BOTTOM ORIGIN FOR ROTATING BONE OR NOT
if ROTATIONAL {
	topBoneData.xLength = originX + lengthdir_x(startheight/2 + ((heightdiff/2) * HEIGHT), dir_topbone_theta)
	topBoneData.yLength = originY + lengthdir_y(startheight/2 + ((heightdiff/2) * HEIGHT), dir_topbone_theta)
	bottomBoneData.xLength = originX - lengthdir_x(startheight/2 + ((heightdiff/2) * HEIGHT), dir_bottombone_theta)
	bottomBoneData.yLength = originY - lengthdir_y(startheight/2 + ((heightdiff/2) * HEIGHT), dir_bottombone_theta)
}	
else {
	topBoneData.xLength = originX + lengthdir_x(startheight + ((heightdiff) * HEIGHT), dir_topbone_theta)
	topBoneData.yLength = originY + lengthdir_y(startheight + ((heightdiff) * HEIGHT), dir_topbone_theta)
	bottomBoneData.xLength = originX 
	bottomBoneData.yLength = originY 
}	

x = bottomBoneData.x
y = bottomBoneData.y
image_yscale = midBoneScale * 2
image_xscale = 2

if place_meeting(x, y, soulObj) scrTakeDamage(1, true, 0, true)

var topbone_radius = point_distance(originX, originY, topBoneData.xLength, topBoneData.yLength)
var bottombone_radius = point_distance(originX, originY, bottomBoneData.xLength, bottomBoneData.yLength)	
topBoneData.x = originX + lengthdir_x(topbone_radius, dir_topbone_theta)
topBoneData.y = originY + lengthdir_y(topbone_radius, dir_topbone_theta)
bottomBoneData.x = originX + lengthdir_x(bottombone_radius, dir_bottombone_theta)
bottomBoneData.y = originY + lengthdir_y(bottombone_radius, dir_bottombone_theta)
//DEBUG STUFF
if keyboard_check(vk_space) {
	if keyboard_check(ord("K")) anglestart = 45
	//if keyboard_check_pressed(ord("L")) changeSize(vwidth, vheight, 1/80, "ease")
	//if keyboard_check_pressed(ord("J")) changeAngle(ang, 1/80, "ease")
}
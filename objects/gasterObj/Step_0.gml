var curve = animcurve_get_channel(gasterCurve, "startEase")	
var xCalc = difCalculation(xTo, startx, curve, spd, 0)
var yCalc = difCalculation(yTo, starty, curve, spd, 1)
var angleCalc = difCalculation(desAngle, angleStart, curve, spd, 2)

if (sprite_index != gasterSPFiring and image_index >= 2) sprite_index = gasterSPFiring
if (animCounter > 5 and Timer < 15) { 
	animCounter = 0
	image_index++	
}
else animCounter++
if (Timer > 0) { 
	x = startx + xCalc
	y = starty + yCalc
	image_angle = angleStart + angleCalc
	direction = image_angle - 180
	_x = x
	_y = y
}
else {
	if (Timer == 0) camObj.shakeCamera(1/30, 4, "shakeStatic")
	
	var posReverse = curveCalculation(animcurve_get_channel(gasterCurve, "reverseEase")	, 1/50, 3)
	Beam.Hide = false	
	x =	_x + lengthdir_x(350, direction) * posReverse
	y =	_y + lengthdir_y(350, direction) * posReverse
	if (Timer < -endTime) {
		image_yscale *= 0.85;
		BeamAlp *= 0.85;
		if (image_yscale < 0.001) {
			instance_destroy()
		}
	}
}	
Timer--;
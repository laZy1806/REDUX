/// @description update camera
// You can write your code in this editor
var moveCurve = animcurve_get_channel(battleCamCurve, movementMethod)
var moveCalc = curveCalculation(moveCurve, movePercent, 0)

var zoomCurve = animcurve_get_channel(battleCamCurve, zoomMethod)
var zoomCalc = curveCalculation(zoomCurve, zoomPercent, 1)

var shakeCurve = animcurve_get_channel(battleCamCurve, shakeMethod)
var shakeCalc = curveCalculation(shakeCurve, shakePercent, 2)

if !RESET {
	Width = supposedWidth + DesWidth * zoomCalc
	Height = supposedHeight + DesHeight * zoomCalc
		
	var camXOffset = default_camWidth - (Width) 
	var camYOffset = default_camHeight - (Height)
		
	camX = supposedX + (camDesX * moveCalc) + camXOffset/2
	camY = supposedY + (camDesY * moveCalc) + camYOffset/2
	
	ranX = random_range(-shake * shakeCalc, shake * shakeCalc)
	ranY = random_range(-shake * shakeCalc, shake * shakeCalc)
	//show_debug_message(string(ranX) + " " + string(ranY))
}
else {
	RESETFUNC()
}
camera_set_view_pos(battlecam, camX + ranX, camY + ranY);
camera_set_view_size(battlecam, Width, Height);

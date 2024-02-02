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
		
	xZoomOffset = 640 - (supposedWidth + DesWidth * zoomCalc) 				
	yZoomOffset = 480 - (supposedHeight + DesHeight * zoomCalc)
	
	camX = supposedX + ((camDesX) * moveCalc) 
	camY = supposedY + ((camDesY) * moveCalc)
	
	ranX = random_range(-shake * shakeCalc, shake * shakeCalc)
	ranY = random_range(-shake * shakeCalc, shake * shakeCalc)
}
else {
	RESETFUNC()
}
camera_set_view_pos(battlecam, camX + ranX + xZoomOffset/2, camY + ranY + yZoomOffset/2);
camera_set_view_size(battlecam, Width, Height);

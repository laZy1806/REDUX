/// @description update camera
// You can write your code in this editor
var moveCurve = animcurve_get_channel(battleCamCurve, movementMethod)
var moveCalc = curveCalculation(moveCurve, movePercent, 0)

var zoomCurve = animcurve_get_channel(battleCamCurve, zoomMethod)
var zoomCalc = curveCalculation(zoomCurve, zoomPercent, 1)

if !RESET {
	Width = supposedWidth + DesWidth * zoomCalc
	Height = supposedHeight + DesHeight * zoomCalc
		
	var camXOffset = default_camWidth - (Width) 
	var camYOffset = default_camHeight - (Height)
		
	camX = supposedX + (camDesX * moveCalc) + camXOffset/2
	camY = supposedY + (camDesY * moveCalc) + camYOffset/2

	//show_debug_message(camera_get_view_x(battlecam))
	//show_debug_message(camera_get_view_y(battlecam))
	
	//num_shake = animcurve_channel_evaluate(animcurve_get_channel(visualeffectcurve, "shake_curve"), percent_shake)
	//ranX = random_range(-shake * num_shake, shake * num_shake)
	//ranY = random_range(-shake * num_shake, shake * num_shake)	
}
else {
	RESETFUNC()
}
camera_set_view_pos(battlecam, camX, camY);
camera_set_view_size(battlecam, Width, Height);

 /// @description update camera
// You can write your code in this editor
//if typeof(stepFunction) = "method" stepFunction()

var zoomCurve = animcurve_get_channel(battleCamCurve, zoomMethod)
var _xzoomCalc = curveCalculation(zoomCurve, zoomPercent + (zoomPercent * 0), 0)
var _yzoomCalc = curveCalculation(zoomCurve, (zoomPercent + 0), 1)

if instance_exists(playerObj) && isActive {
	
	var instID = instance_find(playerObj, 0);
	var view_w_half = camera_get_view_width(cam) * 0.5, view_h_half = camera_get_view_height(cam) * 0.5; 
	var rmClamps = scrRoomClamps()
	
	_x = lerp(_x, instID.x, d(spd));
	_y = lerp(_y, instID.y, d(spd));
	
	x = (_x - view_w_half);
	y = (_y - view_h_half - 40); /* 40 is small offset, still follows room clamps*/
	
	x = clamp(x, rmClamps[0], rmClamps[1])
	y = clamp(y, rmClamps[2], rmClamps[3])

	global.camCenterX = instID.x + xShift;
	global.camCenterY = instID.y + yShift;	
	
	//show_debug_message(string(Width) + "      " + string(Height))
	Width = supposedWidth + DesWidth * _xzoomCalc
	Height = supposedHeight + DesHeight * _yzoomCalc
	
	//show_debug_message(Width)
	
	camera_set_view_pos(view_camera[0], x + xShift, y + yShift);
	camera_set_view_size(view_camera[0], Width, Height);
}

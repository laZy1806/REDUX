 /// @description update camera
// You can write your code in this editor
//if typeof(stepFunction) = "method" stepFunction()
if instance_exists(playerObj) && isActive {
	
	var instID = instance_find(playerObj, 0);
	var view_w_half = camera_get_view_width(cam) * 0.5, view_h_half = camera_get_view_height(cam) * 0.5; 
	var rmClamps = scrRoomClamps()
	
	_x = lerp(_x, instID.x, spd);
	_y = lerp(_y, instID.y, spd);
	
	x = (_x - view_w_half);
	y = (_y - view_h_half);
	
	x = clamp(x, rmClamps[0], rmClamps[1])
	y = clamp(y, rmClamps[2], rmClamps[3])

	global.camCenterX = instID.x + xShift;
	global.camCenterY = instID.y + yShift;
	camera_set_view_pos(view_camera[0], x + xShift, y + yShift);
}

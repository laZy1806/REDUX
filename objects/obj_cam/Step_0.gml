 /// @description update camera
// You can write your code in this editor

if !instance_exists(obj_cutsceneCam) and instance_exists(frisk){
	if room = corridor {
		global.centery = 290 //-50 because the camera is viewed lower by 50 pixels
		xMin = -80
		xMax = room_width - 320
		yMin = 350 - view_h_half - 60
		yMax = 350 - view_h_half - 60
	}
	if room = debugRoom {
		xMin = 0
		xMax = 0
		yMin = 0
		yMax = 0
	}
	if room = mistake {
		xMin = 0
		xMax = 2000
		yMin = 0
		yMax = 2000
	}
	lerpedX = lerp(lerpedX, follow.x, 0.07)
	lerpedY = lerp(lerpedY, follow.y, 0.07)	
	
	x = lerpedX - view_w_half + xModi;
	y = lerpedY - view_h_half;
	
	x = clamp(x, xMin, xMax);
	y = clamp(y, yMin, yMax);
	
	if follow.x >= xMin + 320 and follow.x <= xMax - 320
	global.centerx = follow.x + xModi
	if follow.y > yMin - 240 and follow.y < yMax - 240 
	global.centery = follow.y + yModi
	
	camera_set_view_pos(view_camera[0], x, y)
	show_debug_message(x)
}
// scraped camera, didnt work with cutscenes

/*if !instance_exists(cutsceneObj){
	
//update destination
xTo = follow.x;
yTo = follow.y;

//update object position
x += (xTo - x) / 10;
y += (yTo - y) / 10

//update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
}
s
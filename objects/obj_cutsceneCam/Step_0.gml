/// @description Insert description here
// You can write your code in this editor

camX = camera_get_view_x(cutCam);
camY = camera_get_view_y(cutCam);

Width = camera_get_view_width(cutCam)
Height = camera_get_view_height(cutCam)

var curve = ease_in_out_Cam(1/60, camChangeNum)	

if curve = 1 {
	cam_storedX = camX	
	cam_storedY = camY	
}

newWidth = lerp(Width, zoom_multi * 640, curve * lerpvalue)
newHeight = lerp(Height, zoom_multi * 480, curve * lerpvalue)
	
camX = lerp(camX, camDesX, curve * lerpvalue)
camY = lerp(camY, camDesY, curve * lerpvalue)	
	
camera_set_view_pos(cutCam, camX, camY);
camera_set_view_size(cutCam, newWidth, newHeight);
	
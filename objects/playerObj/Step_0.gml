/// @description Movement and Collision
// You can write your code in this editor
show_debug_message(x)
show_debug_message(y)
if Frozen {
	image_speed = 0
	image_index = 0
}	
else {
	var key_left = keyboard_check(ord(global.leftKey)); 
	var key_right = keyboard_check(ord(global.rightKey));
	var key_up = keyboard_check(ord(global.upKey));
	var key_down = keyboard_check(ord(global.downKey));
	
	hsp = (keyboard_check(ord(global.rightKey)) - keyboard_check(ord(global.leftKey)))
	vsp = (keyboard_check(ord(global.downKey)) - keyboard_check(ord(global.upKey)))

	hsp = (key_right - key_left) * speed_multipler;
	vsp = (key_down - key_up) * speed_multipler;
	
	collisionPixelTDMC.xSpdYSpd(hsp, vsp)
	if (keyboard_check(vk_nokey)) {
		image_speed = 0	
		image_index = 0
	}
	else {
		image_speed = 1	
		if key_down sprite_index = friskType[friskIndex][0]
		if key_left  sprite_index = friskType[friskIndex][1]
		if key_right  sprite_index = friskType[friskIndex][2]
		if key_up  sprite_index = friskType[friskIndex][3]
	}
}
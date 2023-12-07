/// @description Movement and Collision
// You can write your code in this editor
var bbox_side;

// debug speed 
if Frozen {
	image_speed = 0
	image_index = 0
}	
if !Frozen {
	key_left = keyboard_check(ord(global.left)); 
	key_right = keyboard_check(ord(global.right));
	key_up = keyboard_check(ord(global.up));
	key_down = keyboard_check(ord(global.down));
	
	hsp = (keyboard_check(ord(global.right)) - keyboard_check(ord(global.left)))
	vsp = (keyboard_check(ord(global.down)) - keyboard_check(ord(global.up)))

	hsp = (key_right - key_left) * speed_multipler;
	vsp = (key_down - key_up) * speed_multipler;
//collision with objs
#region collisions	
	collisionPixelTDMC.xSpdYSpd(hsp, vsp)
#endregion	

if room = corridor {	
	x = clamp(x, 16 + 16, 2000)
	//y = clamp(y, 285 + 16, 458 - 24)
}
if room = mistake {	
	x = clamp(x, 290, 2000 - 290)
	y = clamp(y, 230, 2000 - 230)
}
	// animation frame swaps
	if key_left  {
		sprite_index = friskType[friskIndex][1]
		image_speed = 1	
	}
	if key_up  {
		sprite_index = friskType[friskIndex][3]
		image_speed = 1	
	}
	if key_down {
		sprite_index = friskType[friskIndex][0]
		image_speed = 1	
	}
	if key_right  { 
		sprite_index = friskType[friskIndex][2]
		image_speed = 1	
	}
	if (keyboard_check(vk_nokey)) {
		image_speed = 0	
		image_index = 0
	}
}
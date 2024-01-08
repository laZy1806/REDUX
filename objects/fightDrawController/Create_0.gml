/// @description Insert description here
// You can write your code in this editor
xscale = 1
yscale = 1
battleSurf = 0
image_speed = 0
DRAW = false
alarm[0] = 5

boxMasking = function(_toMask) {
	if instance_exists(fightBoxObj) {
		var box = instance_find(fightBoxObj, 0)
		gpu_set_blendenable(false)
		gpu_set_colorwriteenable(false, false, false, true)
		draw_set_alpha(0)
		draw_rectangle(0, 0, room_width, room_height, false);
		// fills the alpha channel with nothing; helps protect the actual image without influencing the blend modes onto them
	
		draw_set_alpha(1)
		draw_sprite_ext(battlepixel, 0, box.x, box.y, box.WIDTHSTATIC/2, box.HEIGHTSTATIC/2, box.image_angle, c_white, 1)
		gpu_set_blendenable(true)
		gpu_set_colorwriteenable(true, true, true, true)
		// this is the drawing of the mask, what we are allowing to be seen, being stored directly into the alpha channel
	
		gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha)
		gpu_set_alphatestenable(true)
	
		_toMask()
	
		gpu_set_alphatestenable(false)
		gpu_set_blendmode(bm_normal)
	
		gpu_set_colorwriteenable(false, false, false, true)
		draw_sprite_ext(battlepixel, 0, 320, 240, 320, 240, 0, c_white, 1)
		gpu_set_colorwriteenable(true, true, true, true)
	}
}


















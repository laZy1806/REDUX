/// @description Insert description here
// You can write your code in this editor
//instance_create_depth(x, y, depth, obj_collisiontester)
image_alpha = 0
drawWall = function() {
	with id {	
		draw_sprite_ext(battlepixel, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1)	
		draw_sprite_ext(battlepixel, 0, x, y, image_xscale, image_yscale, image_angle, c_black, 1 - image_alpha)
	}
}

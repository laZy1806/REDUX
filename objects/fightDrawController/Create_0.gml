/// @description Insert description here
// You can write your code in this editor
xscale = 1
yscale = 1
battleSurf = 0
image_speed = 0
DRAW = false
alarm[0] = 5

drawSurf = noone
scrOutlineShaderinit()

boneSurf = noone


boxMasking = function(_toMask) {
	if instance_exists(fightBoxObj) {
		var box = instance_find(fightBoxObj, 0)
		if !surface_exists(boneSurf) boneSurf = surface_create(640, 480)
		
		surface_set_target(boneSurf)
		
		draw_clear_alpha(c_white, 0)
		
			draw_sprite_ext(battlepixel, 0, 320, 320, (5 + box.WIDTHSTATIC)/2, (5 + box.HEIGHTSTATIC)/2, -box.image_angle, c_white, 1)
			
			gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha)
			
			//draw_sprite(human, 0, 320, 320)
			
			_toMask()
			
			gpu_set_blendmode(bm_normal)
			
		surface_reset_target()
		
		draw_surface(boneSurf, 0, 0)
	
	}
}

















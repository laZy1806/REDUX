/// @description drawing the box
//setting side parameters

depth = fightDrawController.depth + 1

/*
draw_set_font(menuFont)

shader_set(shaderOutline)
	
	var texture = font_get_texture(menuFont);
	
	var width = texture_get_texel_width(texture), height = texture_get_texel_height(texture)
	
	shader_set_uniform_f(pixWH, width, height)
	
	shader_set_uniform_f(accuracy, 16)
	
	shader_set_uniform_f(thickness, 1.0)
	
	shader_set_uniform_f(color, 0, 0, 0)
	
	shader_set_uniform_f(tolerance, mouse_x/640)
	
	draw_set_font(menuFont)
	
	draw_text(400, 100, "the dog doing frow")
	
shader_reset()

//if keyboard_check(vk_shift)	draw_outline_text(400, 100, string(current_time), c_white, c_black, 4, 2, 1, 1)
//if keyboard_check(vk_shift)	draw_outline_text(400, 150, string(current_time), c_white, c_black, 4, 2, 1, 1)


/*
if !surface_exists(testSurf) testSurf = surface_create(640, 480)

surface_set_target(testSurf)

//gpu_set_colorwriteenable(false, false, false, true)

draw_clear_alpha(c_white, 0)

gpu_set_blendenable(false)

//gpu_set_colorwriteenable(true, true, true, true)


//gpu_set_blendmode_ext()

	draw_text(400, 100, "the doggy")

gpu_set_blendenable(true)

surface_reset_target()
*/





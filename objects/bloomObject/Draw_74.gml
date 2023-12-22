/// @description Insert description here
// You can write your code in this editor

var bloom_threshold = 0.3
var bloom_range = 0.2 

var bloom_intensity = 0.6
var bloom_saturation = 1
var bloom_darken = 1 



var blur_steps = 50 * (mouse_x/640)
var sigma = 8 * (mouse_y / 480)


if (!surface_exists(sfr_ping)) {
	sfr_ping = surface_create(app_w, app_h);
	bloom_texture = surface_get_texture(sfr_ping);
}
if (!surface_exists(sfr_pong)) sfr_pong = surface_create(app_w, app_h)

//1st pass: Seperates Brights
shader_set(shader_bloom_lum)
	shader_set_uniform_f(u_bloom_threshold,		bloom_threshold)
	shader_set_uniform_f(u_bloom_range,		bloom_range)

	surface_set_target(sfr_ping)
		draw_surface(application_surface, 0, 0)
	surface_reset_target()
//2nd pass: blur horizontally
	gpu_set_tex_filter(true);
		shader_set(shader_blur);
			shader_set_uniform_f(u_blur_steps,			blur_steps);
			shader_set_uniform_f(u_sigma,				sigma);
			shader_set_uniform_f(u_texel_size,			texel_w, texel_h);
			shader_set_uniform_f(u_blur_vector,			1, 0);
//3rd pass: blur vertically	
			surface_set_target(sfr_pong)
				draw_surface(sfr_ping, 0, 0)
			surface_reset_target()
		
			shader_set_uniform_f(u_blur_vector,			0, 1);
			surface_set_target(sfr_ping)
				draw_surface(sfr_pong, 0, 0)
			surface_reset_target()
			
		shader_reset()
	gpu_set_tex_filter(false)
	
shader_reset()	
//4th pass: Blending the bloom surface and App surface with shader
shader_set(shader_bloom_blend)
	shader_set_uniform_f(u_bloom_intensity,	bloom_intensity);
	shader_set_uniform_f(u_bloom_darken,	bloom_darken);
	shader_set_uniform_f(u_bloom_saturation,	bloom_saturation);
	
	shader_set_uniform_f(u_bloom_texture, bloom_texture);
	draw_surface_stretched(application_surface, 0, 0, gui_w, gui_h)
shader_reset()






















/// @description Insert description here
// You can write your code in this editor

if (!surface_exists(sfr_ping)) sfr_ping = surface_create(gui_w * sfr_scale, gui_h * sfr_scale);
if (!surface_exists(sfr_pong)) sfr_pong = surface_create(gui_w * sfr_scale, gui_h * sfr_scale);

if (sfr_scale != sfr_scale_prev) {
	surface_resize(sfr_ping, gui_w * sfr_scale, gui_h * sfr_scale)
	surface_resize(sfr_pong, gui_w * sfr_scale, gui_h * sfr_scale)
	sfr_scale_prev = sfr_scale
}
var blur_steps = 50 * (mouse_x/640)
var sigma = 8 * (mouse_y / 480)


if keyboard_check_pressed(vk_space) sfr_scale *= 0.5

show_debug_message()
shader_set(shader) 

	gpu_set_tex_filter(true)
	
	shader_set_uniform_f(u_blur_steps,		blur_steps)
	shader_set_uniform_f(u_texel_size,		texel_w, texel_h)
	shader_set_uniform_f(u_sigma,			sigma)
	
	//1st pass
	//Application surface goes to ping
	surface_set_target(sfr_ping)
		draw_surface_stretched(application_surface, 0, 0, round(gui_w * sfr_scale), round(gui_h * sfr_scale));
	surface_reset_target()
	
	//2nd pass
	//ping sufrace then goes to the pong surface
	shader_set(shader);
		shader_set_uniform_f(u_blur_steps, blur_steps);
		shader_set_uniform_f(u_sigma, sigma);
		shader_set_uniform_f(u_texel_size, texel_w/sfr_scale, texel_h/sfr_scale);
		shader_set_uniform_f(u_blur_vector, 1, 0);
		
		surface_set_target(sfr_pong)
			draw_surface(sfr_ping, 0, 0)
		surface_reset_target()
		
	//3nd pass
	//pong surface back to ping
		shader_set_uniform_f(u_blur_vector, 0, 1);
		surface_set_target(sfr_ping)
			draw_surface(sfr_pong, 0, 0)
		surface_reset_target()
		
	shader_reset()
	
	//4nd pass
	//ping goes to the screen
	draw_surface_stretched(sfr_ping, 0, 0, gui_w, gui_h)
	
	gpu_set_tex_filter(false)
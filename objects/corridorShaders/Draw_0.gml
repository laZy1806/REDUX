/// @description Insert description here
// You can write your code in this editor
/*
shader_set(Vignette)
	shader_set_uniform_f_array(u_uv_center, uv_center);
	shader_set_uniform_f_array(u_uv_dimensions, uv_dimensions);
	shader_set_uniform_f(u_vignette_opacity, 0.8);
	shader_set_uniform_f(u_vignette_outer, 1.5 - add);
	shader_set_uniform_f(u_vignette_falloff, 0.7);
	
	draw_surface(application_surface, 0, 0)
	
shader_reset()

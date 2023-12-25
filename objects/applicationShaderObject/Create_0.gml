/// @description Insert description here
// You can write your code in this editor
depth = 0
event_inherited()
#region bloom variables
	shader_bloom_lum		= shPassthrough
	u_bloom_threshold		= shader_get_uniform(shader_bloom_lum, "bloom_threshold");
	u_bloom_range			= shader_get_uniform(shader_bloom_lum, "bloom_range");

	shader_blur				= shader2PassGaussian
	u_blur_steps			= shader_get_uniform(shader_blur, "blur_steps")
	u_sigma					= shader_get_uniform(shader_blur, "sigma")
	u_texel_size			= shader_get_uniform(shader_blur, "texel_size")
	u_blur_vector			= shader_get_uniform(shader_blur, "blur_vector")

	shader_bloom_blend		= shBloomBlend
	u_bloom_intensity		= shader_get_uniform(shader_bloom_blend, "bloom_intensity")
	u_bloom_darken			= shader_get_uniform(shader_bloom_blend, "bloom_darken")
	u_bloom_saturation		= shader_get_uniform(shader_bloom_blend, "bloom_saturation")
	u_bloom_texture			= shader_get_sampler_index(shader_bloom_blend, "bloom_texture")

	bloom_texture			= -1

	app_w					= global.windWidth
	app_h					= global.windHeight - global.windOffset; 

	gui_w					= display_get_gui_width()
	gui_h					= display_get_gui_height()

	sfr_ping				= -1;
	sfr_pong				= -1;
	finalSurf				= -1

	texel_w					= 1/ app_w
	texel_h					= 1/ app_h
#endregion





testSin = 0



fullscreenOffset = 0

abc = 1
application_surface_draw_enable(false)
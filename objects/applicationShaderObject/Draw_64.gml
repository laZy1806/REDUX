/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if !surface_exists(finalSurf) finalSurf = surface_create(app_w, app_h)
if !surface_exists(glitchSurf) glitchSurf = surface_create(app_w, app_h)
if !surface_exists(bloomSurf) bloomSurf = surface_create(app_w, app_h)

#region bloom code
	var bloom_threshold = 0
	var bloom_range = 0 

	var bloom_intensity = 0.8
	var bloom_saturation = 1
	var bloom_darken = 1 
	
	var blur_steps = 10 //+ 100 * (mouse_x/640)
	
	var sigma = 0.2 //+ 0.8 * (mouse_x/640) 

	if (!surface_exists(srf_ping)) {
		srf_ping = surface_create(app_w, app_h);
		bloom_texture = surface_get_texture(srf_ping);
	}
	if (!surface_exists(srf_pong)) srf_pong = surface_create(app_w, app_h)
	
	//1st pass: Seperates Brights
	shader_set(shader_bloom_lum)
		shader_set_uniform_f(u_bloom_threshold,		bloom_threshold)
		shader_set_uniform_f(u_bloom_range,		bloom_range)

		surface_set_target(srf_ping)
			draw_surface_stretched(application_surface, 0, 0, app_w, app_h)
		surface_reset_target()
	
		gpu_set_tex_filter(true);
	//2nd pass: blur horizontally		
			shader_set(shader_blur);
		
				shader_set_uniform_f(u_blur_steps,			blur_steps);
				shader_set_uniform_f(u_sigma,				sigma);
				shader_set_uniform_f(u_texel_size,			texel_w, texel_h);
				
				shader_set_uniform_f(u_blur_vector,			1, 0);
				
				surface_set_target(srf_pong)
					draw_surface(srf_ping, 0, 0)
				surface_reset_target()
			
	//3rd pass: blur vertically	

				shader_set_uniform_f(u_blur_vector,			0, 1);
				surface_set_target(srf_ping)
					draw_surface(srf_pong, 0, 0)
				surface_reset_target()
			
			shader_reset()
		
		//surface_resize(srf_ping, app_w, app_h)
	
	shader_reset()	
	
	gpu_set_tex_filter(false)
	
	//4th pass: Blending the bloom surface and App surface with shader
	surface_set_target(bloomSurf)
		shader_set(shader_bloom_blend)
			shader_set_uniform_f(u_bloom_intensity,	bloom_intensity);
			shader_set_uniform_f(u_bloom_darken,	bloom_darken);
			shader_set_uniform_f(u_bloom_saturation,	bloom_saturation);
			texture_set_stage(u_bloom_texture, bloom_texture);
			gpu_set_tex_filter_ext(u_bloom_texture, true)
	
			draw_surface_stretched(application_surface, 0, 0, app_w, app_h)
		shader_reset()
		
		gpu_set_tex_filter(false)
		
	surface_reset_target()

	surface_set_target(glitchSurf)
	
		draw_surface_stretched(bloomSurf, 0, 0, app_w, app_h)
		
	surface_reset_target()
	

	
#endregion 
#region glitch code
	bktglitch_activate()

		BktGlitch_config(0.000000, 0.010000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.016000, 0.000000, 0.000000, 0.566667, 0.000000);
		
		surface_set_target(finalSurf)
		
			draw_surface_stretched(glitchSurf, 0, 0, app_w, app_h)
			
		surface_reset_target()

	bktglitch_deactivate()
	
#endregion
#region blur code



#endregion
	draw_surface_stretched(finalSurf, 0 + fullscreenOffset, 0 + global.windOffset, app_w, app_h)

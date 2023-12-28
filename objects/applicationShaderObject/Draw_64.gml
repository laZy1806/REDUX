/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if !surface_exists(finalSurf) finalSurf = surface_create(app_w, app_h)

#region bloom code
	var bloom_threshold = 0.3
	var bloom_range = 0.2 

	var bloom_intensity = 0.3
	var bloom_saturation = 1
	var bloom_darken = 1 
	var blur_steps = 20 * (mouse_x/640)
	var sigma = 2 * (mouse_y / 480)
	var txScale = 1
	if (!surface_exists(srf_ping)) {
		srf_ping = surface_create(app_w/txScale, app_h/txScale);
		bloom_texture = surface_get_texture(srf_ping);
	}
	if (!surface_exists(srf_pong)) srf_pong = surface_create(app_w/txScale, app_h/txScale)
	//1st pass: Seperates Brights
	shader_set(shader_bloom_lum)
		shader_set_uniform_f(u_bloom_threshold,		bloom_threshold)
		shader_set_uniform_f(u_bloom_range,		bloom_range)

		surface_set_target(srf_ping)
			draw_surface_stretched(application_surface, 0, 0, app_w/txScale, app_h/txScale)
		surface_reset_target()
	
		gpu_set_tex_filter(true);
			shader_set(shader_blur);
		
				shader_set_uniform_f(u_blur_steps,			blur_steps);
				shader_set_uniform_f(u_sigma,				sigma);
				shader_set_uniform_f(u_texel_size,			texel_w * txScale, texel_h * txScale);
			
	//2nd pass: blur horizontally			
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
		gpu_set_tex_filter(false)
	
	shader_reset()	

	//4th pass: Blending the bloom surface and App surface with shader
	surface_set_target(finalSurf)
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

	if (surface_exists(srf_ping)) {
		surface_resize(srf_ping, app_w/txScale, app_h/txScale)
	}
	if (surface_exists(srf_pong)) surface_resize(srf_pong, app_w/txScale, app_h/txScale)

#endregion 

if !abc draw_surface_stretched(finalSurf, 0 + fullscreenOffset, 0, app_w, app_h)
if abc {
	bktglitch_activate()
	BktGlitch_config(0.009835, 0.456556, 2.500387, 0.629678, 0.443030, 0.434858, 1.611564, 0.545954, 0.053589, 0.351816, 0.021359, 0.188515, 3.979923, 1.000000, 0.070059);
		draw_surface_stretched(finalSurf, 0 + fullscreenOffset, 0, app_w, app_h)
	bktglitch_deactivate()
}
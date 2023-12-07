/// @description Insert description here
// You can write your code in this editor
if !surface_exists(temp)	
temp = surface_create(surface_get_width(application_surface), surface_get_height(application_surface))

shader_set(tempShader)

	intensity = shader_get_uniform(tempShader, "intensity")

	shader_set_uniform_f(intensity, 0.8)
	
		surface_set_target(temp)
			draw_surface(application_surface, 0, 0)
		surface_reset_target()

shader_reset()

draw_surface_stretched(temp, 0, 0, display_get_gui_width(), display_get_gui_height())






















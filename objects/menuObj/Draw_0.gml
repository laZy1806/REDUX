/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(menuSurf)) menuSurf = surface_create(640, 480)

surface_set_target(menuSurf)

	draw_clear_alpha(c_black, 0)

	Start.DISPLAY()
	Options.DISPLAY()

surface_reset_target()

scrOutlineShaderData(menuSurf, 16, 1)
	
	draw_surface(menuSurf, 0, 0)
	
shader_reset()

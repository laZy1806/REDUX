/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(menuSurf)) menuSurf = surface_create(640, 480)

surface_set_target(menuSurf)

	draw_clear_alpha(c_black, 0)
	for(var i = 0; i < array_length(allButtons); i++) {
		for(var j = 0; j < array_length(allButtons[i]); j++) {
			var _b = allButtons[i][j]
			//_b.x = _b.isCurveFinished(0) ? lerp(_b.x, _b.locs[_b.location][0] + 50 * _b.onMe, 0.09) : _b.x
			_b.DISPLAY()
		}
	}

surface_reset_target()

scrOutlineShaderData(menuSurf, 16, 1)
	
	draw_surface(menuSurf, 0, 0)
	
shader_reset()

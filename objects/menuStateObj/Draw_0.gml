/// @description Insert description here
// You can write your code in this editor

if (!surface_exists(menuSurf)) menuSurf = surface_create(640, 480)

surface_set_target(menuSurf)

var xShift = global.camCenterX - 320, yShift = global.camCenterY - 280;

	draw_clear_alpha(c_black, 0)
	for(var i = 0; i < array_length(allButtons); i++) {
		for(var j = 0; j < array_length(allButtons[i]); j++) {
			var _b = allButtons[i][j]
			//_b.x = (_b.isCurveFinished(0) && i = global.menuState) ? lerp(_b.x, (_b.locs[_b.location][0]) + 50 * _b.onMe, 0.09) : (_b.x)
			_b.DISPLAY(, , , , , image_alpha)
		}
	}
	
	
draw_sprite_ext(battlepixel, 0, 320, 30, 325, 50, 0, c_black, 1)

draw_sprite_ext(battlepixel, 0, 320, 450, 325, 50, 0, c_black, 1)

draw_sprite_ext(battlepixel, 0, 320, 80, 340, 1, 0, c_white, 1)

draw_sprite_ext(battlepixel, 0, 320, 400, 340, 1, 0, c_white, 1)
	
	draw_set_alpha(image_alpha)
	
		draw_sprite_ext(mockupTitle, 0, 130, 120, 1, 1, 0, c_white, 1)
		
	draw_set_alpha(1)
	
surface_reset_target()

scrOutlineShaderData(menuSurf, 16, 1)
	
	draw_surface_ext(menuSurf, xShift, yShift, 1, 1, 0, c_white, 1)
	
shader_reset()

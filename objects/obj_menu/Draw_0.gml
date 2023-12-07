/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_battle_dialogue)
draw_set_halign(fa_center)
draw_set_alpha(1)
var text_func = function(_x, _y, _toString, _angle, _scale, _color) {
///@func text_func(x, y, string, angle, scale, color)
	
	draw_set_font(menuFont)
	draw_text_transformed_color(_x, _y, _toString, _scale, _scale, _angle, _color, _color, _color, _color, 1)
}
if runEvent and (ranEventNum = 50 or ranEventNum = 45) {
	var videoData = video_draw()
	var errorCheck = videoData[0]
	
	if (errorCheck = 0) draw_surface_ext(videoData[1], 250, 70, 0.5, 0.5, 0, c_white, videoAlpha[0])
	
}
if runEvent and ranEventNum = 40 {
	shader_set(ValuesShader)
		shader_set_uniform_f(Brt, 0)
		shader_set_uniform_f(Sat, 0)	
		draw_sprite_ext(corridorSP, 0, corridorX, corridorY, 1.5, 1.5, 2, c_white, corAlp[0])	
	shader_reset()
}
menuParticles_system.draw()
if (!global.startGame) obj_menucontroller.galObj.galleryDraw()
#region button stuff and menu base

draw_sprite_ext(battlepixel, 0, 320, 30 - lineLerp[0], 325, 50, 2 + lineRotation, c_black, 1)

draw_sprite_ext(battlepixel, 0, 320, 450 + lineLerp[0], 325, 50, 2 + lineRotation, c_black, 1)

draw_sprite_ext(battlepixel, 0, 320, 80 - lineLerp[0], 340, 1, 2 + lineRotation, c_white, 1)

draw_sprite_ext(battlepixel, 0, 320, 400 + lineLerp[0], 340, 1, 2 + lineRotation, c_white, 1)

text_func(button[0][0], button[0][2], "start", 3 + menuRotMusic, 1 + menuScaleMusic, c_white)

text_func(button[1][0], button[1][2], "options", 3 + menuRotMusic, 1 + menuScaleMusic, c_white)

text_func(button[2][0], button[2][2], "gallery", 3 + menuRotMusic, 1 + menuScaleMusic, c_white)

text_func(button[3][0], button[3][2], "controls", 3 + menuRotMusic, 1 + menuScaleMusic, c_white)

text_func(button[4][0], button[4][2], "fullscreen", 3 + menuRotMusic, 1 + menuScaleMusic, c_white)

text_func(button[5][0], button[5][2], "back", 3 + menuRotMusic, 1 + menuScaleMusic, c_white)

text_func(button[6][0], button[6][2], "up " + global.up, 3 + menuRotMusic, 1 + menuScaleMusic, c_white)

text_func(button[7][0], button[7][2], "down " + global.down, 3 + menuRotMusic, 1 + menuScaleMusic, c_white)

text_func(button[8][0], button[8][2], "left " + global.left, 3 + menuRotMusic, 1 + menuScaleMusic, c_white)

text_func(button[9][0], button[9][2], "right " + global.right, 3 + menuRotMusic, 1 + menuScaleMusic, c_white)

text_func(button[11][0], button[11][2], "next ", 3 + menuRotMusic, 1 + menuScaleMusic, c_white)

text_func(button[12][0], button[12][2], "previous", 3 + menuRotMusic, 1 + menuScaleMusic, c_white)

text_func(button[13][0], button[13][2], "back", 3 + menuRotMusic, 1 + menuScaleMusic, c_white)

#endregion
//draw_sprite_ext(sp_testmonster, 0, 250, 575, 4, 4, 0, c_white, 1)
//draw_sprite_ext(afamLogo, image_index, 140, 130, 1, 1, 0, c_white, 1)
/*
draw_text(400, 50, "X coordinate  " + string(mouse_x))
draw_text(400, 100, "Y coordinate  " + string(mouse_y))

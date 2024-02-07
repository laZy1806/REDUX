/// @description Insert description here
// You can write your code in this editor
scrCurveList(3)
SETWIDTH = 0
SETHEIGHT = 0
bakedX = 0
bakedY = 0
drawEvent = function() {
	if !in_sequence draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 0.7)
	else draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
}
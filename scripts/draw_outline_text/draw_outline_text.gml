// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_outline_text(_x, _y, _string, _col, _outCol, _quality, _thickness, _xscale, _yscale, _rot = 0, _alpha = 1) {
	
	for(var i = 0; i < 360; i += 360/_quality){
		draw_text_transformed_color(_x + lengthdir_x(_thickness, i), _y + lengthdir_y(_thickness, i), _string, _xscale, _yscale, _rot, _outCol, _outCol, _outCol, _outCol, _alpha)
	}
	draw_text_transformed_color(_x, _y, _string, _xscale, _yscale, _rot, _col, _col, _col, _col, _alpha)
}
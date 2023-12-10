// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scribbleCreator(toWrite, _font, _scale, _color, listofFX = undefined, _halign = fa_center, _valign = fa_middle) constructor
{
	text = Scribble(argument[0]);
	font = argument[1]
	scale = argument[2]
	color = argument[3]
	fxs = typeof(argument[4]) = "array" ? argument[4] : array_create(1, function(){ return 0 })
	horiAlign = argument[5]
	veriAlign = argument[6]
	
	Draw = function(_x, _y) {
		text.starting_format(font, color)
		text.align(horiAlign, veriAlign)
		for(var i = 0; i < array_length(fxs); i++) {
			fxs[i]() // running every fxs
		}
		text.draw(_x, _y)
	}
}
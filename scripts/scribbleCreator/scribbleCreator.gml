// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scribbleCreator(toWrite, _font, _scale, _color, _halign = fa_center, _valign = fa_middle, optFunc = noone) constructor
{
	scrib = scribble(argument[0]);
	font = argument[1]
	scale = argument[2]
	color = argument[3]
	horiAlign = argument[4]
	veriAlign = argument[5]
	x = 0
	y = 0
	scribDrawFunc = optFunc
	flashData = array_create(2, noone)
	fxFunc = 0
	Draw = function(_x, _y) { 
		var i = scrib
		x = _x
		y = _y
		i.starting_format(font, color)
		i.align(horiAlign, veriAlign)
		i.scale(scale)
		#region optional FX
			if typeof(fxFunc) = "method" fxFunc()
		#endregion
		if typeof(scribDrawFunc) == "method" scribDrawFunc()
		i.draw(x, y)
	}
}
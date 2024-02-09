/// @description Insert description here
// You can write your code in this editor

//if variable_instance_exists(id, "step_function") step_function()
if isActive {
	if variable_instance_exists(id, "step_function") step_function()

	var OBJ = instance_find(fightBoxObj, 0)
	var _relx = OBJ.x
	var _rely = OBJ.y

	DIST = point_distance(_relx, _rely, _relx + SETWIDTH, _rely + SETHEIGHT)
	DIRECTION = point_direction(_relx, _rely, _relx + SETWIDTH, _rely + SETHEIGHT) - OBJ.ANG

	x = _relx + lengthdir_x(DIST, DIRECTION)
	y = _rely + lengthdir_y(DIST, DIRECTION)


	//bakedX = _relx + lengthdir_x(DIST + 2, DIRECTION)
	//bakedY = _rely + lengthdir_y(DIST + 2, DIRECTION)

	image_angle = -OBJ.ANG
	image_alpha = 1
}
else {
	x = -100000
	y = -100000
	image_alpha = 0
}
//if image_xscale != 1 show_debug_message(image_xscale)